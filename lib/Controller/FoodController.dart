
import 'package:foodfinder/Model/FoodFactModel.dart';
import 'package:foodfinder/Services/ApiCall.dart';
import 'package:get/get.dart';

class FoodController extends GetxController {
  var isLoading = true.obs;
  var foodFact = OpenFoodFact().obs;

  @override
  void onInit() {
    fetchFoodFact();
    super.onInit();
  }

  void fetchFoodFact() async {
    try {
      isLoading(true);
      var food = await ApiCall.getOpenFoodFact();
      foodFact(food);
        } finally {
      isLoading(false);
    }
      
  }
}
 