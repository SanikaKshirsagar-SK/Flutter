import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/screens/settingscreen.dart';
import 'package:plant_app_ui/widget.dart';
import '../screens/cartscreen.dart';
import '../screens/home.dart';
import '../screens/plantCategory.dart';

class DashboardController extends GetxController {
  var tabIndex = 0.obs;
  var selectedItemColor = const Color.fromRGBO(118, 152, 75, 1).obs;
  var unselectedItemColor = Colors.grey.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
    switch (index) {
      case 0:
        Get.to(() => const HomeScreen());
        break;
      case 1:
        Get.to(() => PlantCategories());
        break;
      case 2:
        Get.to(() => const CartScreen());
        break;
      case 3:
        Get.to(() => const SettingsScreen());
        break;
    }
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 10,
            currentIndex: controller.tabIndex.value,
            onTap: (index) {
              controller.changeTabIndex(index);
            },
            backgroundColor: Colors.white,
            selectedItemColor: controller.selectedItemColor.value,
            unselectedItemColor: controller.unselectedItemColor.value,
            selectedLabelStyle:
                textStyleData(fontSize: 12, fontWeight: FontWeight.normal),
            unselectedLabelStyle:
                textStyleData(fontSize: 12, fontWeight: FontWeight.normal),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}
