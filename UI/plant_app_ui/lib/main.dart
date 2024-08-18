import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/controllers/cartcontroller.dart';
import 'package:plant_app_ui/controllers/dashcontroller.dart';
import 'package:plant_app_ui/controllers/ordercontroller.dart';
import 'package:plant_app_ui/controllers/plantController.dart';
import 'package:plant_app_ui/controllers/profilecontroller.dart';
import 'package:plant_app_ui/controllers/searchcontroller.dart';
import 'package:plant_app_ui/controllers/wishlistcontroller.dart';
import 'package:plant_app_ui/screens/firstscreen.dart';
import 'package:plant_app_ui/screens/plantCategory.dart';
import 'controllers/databasecontroller.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: BindingsBuilder(() async {
        await Get.putAsync<DatabaseController>(() async {
          final controller = DatabaseController();
          await controller.createDB();
          return controller;
        });
        await Get.putAsync<CartController>(() async {
          final controller = CartController();
          return controller;
        });
        Get.put(PlantController());
        Get.put(DashboardController());
        Get.put(ProfileController());
        Get.put(OrderController());
        Get.put(WishlistController());
        Get.put(PlantCategoriesController());
        Get.put(SearchController1());
        
      }),
      home: const FirstScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1)),
    );
  }
}
