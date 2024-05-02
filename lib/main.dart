import 'package:flutter/material.dart';
import 'package:foodfinder/Controller/FoodController.dart';
import 'package:foodfinder/Screens/ProductFInder.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(home:  ProductFinder(),
    initialBinding: BindingsBuilder(() {
        Get.put(FoodController());
      }),
  ));
}


 