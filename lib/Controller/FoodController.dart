
import 'package:foodfinder/Model/FoodFactModel.dart';
import 'package:foodfinder/Services/ApiCall.dart';
import 'package:get/get.dart';

class FoodController extends GetxController {
  var isLoading = true.obs;
  var foodFact = OpenFoodFact().obs;

  @override
  void onInit() {
    fetchFoodFact(
      barcode: '8901719128462',
    );
    super.onInit();
  }

  void fetchFoodFact(
    {
      required String? barcode,
    
    }
  ) async {
    try {
      isLoading(true);
      var food = await ApiCall.getOpenFoodFact(
        barcode: barcode,
      );
      foodFact(food);
        } finally {
      isLoading(false);
    }
      
  }
}
 