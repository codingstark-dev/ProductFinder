//use getx for state management
import 'package:flutter/material.dart';
import 'package:foodfinder/Controller/FoodController.dart';
import 'package:get/get.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class ProductFinder extends StatelessWidget {
  // const ProductFinder({super.key});
  final FoodController foodcontroller = Get.put<FoodController>(
    FoodController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Finder'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Enter Barcode'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    hintText: 'Enter Barcode',
                  ),
                  onChanged: (value) {
                    foodcontroller.fetchFoodFact(
                      barcode: value,
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  var res = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SimpleBarcodeScannerPage(),
                      ));
                  print(res);
                  if (res is String) {
                    foodcontroller.fetchFoodFact(
                      barcode: res,
                    );
                  }
                },
                child: const Text('Scan Barcode'),
              ),
              foodcontroller == null
                  ? Container(
                      child: Text("No Internet Connection"),
                    )
                  : Obx(() {
                      if (foodcontroller.isLoading.value) {
                        return const CircularProgressIndicator();
                      } else {
                        return Column(
                          children: [
                            Card(
                              child: Text(foodcontroller
                                      .foodFact.value.product!.productName ??
                                  ''),
                            ),
                            Text(
                                foodcontroller.foodFact.value.product!.brands ??
                                    ''),
                            //image
                            Image.network(foodcontroller
                                    .foodFact.value.product!.imageFrontUrl ??
                                ''),
                            Text(foodcontroller
                                    .foodFact.value.product!.ingredientsText ??
                                ''),
                            //create scores widget
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Scores'),
                                  Text(
                                      'Nutrition Grade: ${foodcontroller.foodFact.value.product!.nutritionGrades ?? ''}'),
                                  Text(
                                      'Nova Group: ${foodcontroller.foodFact.value.product!.novaGroup ?? ''}'),
                                  Text(
                                      'Eco Score: ${foodcontroller.foodFact.value.product!.ecoscoreGrade ?? ''}'),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Nutriments'),
                                  Text(
                                      'Energy: ${foodcontroller.foodFact.value.product!.nutriments!.energy ?? ''}'),
                                  Text(
                                      'Fat: ${foodcontroller.foodFact.value.product!.nutriments!.fat ?? ''}'),
                                  Text(
                                      'Saturated Fat: ${foodcontroller.foodFact.value.product!.nutriments!.saturatedFat ?? ''}'),
                                  Text(
                                      'Carbohydrates: ${foodcontroller.foodFact.value.product!.nutriments!.carbohydrates ?? ''}'),
                                  Text(
                                      'Sugars: ${foodcontroller.foodFact.value.product!.nutriments!.sugars ?? ''}'),
                                  Text(
                                      'Sodium: ${foodcontroller.foodFact.value.product!.nutriments!.sodiumUnit ?? ''}'),
                                  Text(
                                      'Proteins: ${foodcontroller.foodFact.value.product!.nutriments!.proteins ?? ''}'),
                                  Text(
                                      'Salt: ${foodcontroller.foodFact.value.product!.nutriments!.salt ?? ''}'),
                                ],
                              ),
                            ),

                            //create nutriments widget
                            //create ingredients widget
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Ingredients'),
                                  for (var ingredient in foodcontroller
                                      .foodFact.value.product!.ingredients!)
                                    Text(ingredient.text ?? ''),
                                ],
                              ),
                            ),
                            //create additives widget
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Additives'),
                                  for (var additive in foodcontroller.foodFact
                                      .value.product!.additivesOriginalTags!)
                                    Text(additive ?? ''),
                                ],
                              ),
                            ),
                          ],
                        );
                      }
                    }),
            ],
          ),
        ),
      ),
    );
  }
}
