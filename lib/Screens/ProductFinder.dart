//use getx for state management 
import 'package:flutter/material.dart';
import 'package:foodfinder/Controller/FoodController.dart';
import 'package:get/get.dart';

class ProductFinder extends StatelessWidget {
  const ProductFinder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Finder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GetX<FoodController>(
              init: FoodController(),
              builder: (controller) {
                if (controller.isLoading.value) {
                  return const CircularProgressIndicator();
                }
                return Column(
                  children: <Widget>[
                    Text(controller.foodFact.value.product!.productName!),
                    Image.network(controller.foodFact.value.product!.imageFrontUrl!),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}