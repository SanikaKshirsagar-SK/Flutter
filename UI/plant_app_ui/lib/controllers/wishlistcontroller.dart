import 'dart:developer';

import 'package:get/get.dart';
import 'package:plant_app_ui/model/plantModel.dart';

import 'databasecontroller.dart';

class WishlistController extends GetxController {
  RxList<PlantModel> wishlist = <PlantModel>[].obs;
  late DatabaseController databaseController;
  RxBool isInWishlist = false.obs;

  @override
  void onInit() {
    super.onInit();
    databaseController = Get.find<DatabaseController>();
    fetchWishlistDataFromDB();
  }

  void fetchWishlistDataFromDB() async {
    List<PlantModel> wishlistData =
        await databaseController.fetchWishlistData();
    wishlist.assignAll(wishlistData);
  }

  void addProductToWishlist(PlantModel product) async {
    if (product.isFav) {
      if (!wishlist.contains(product)) {
        wishlist.add(product);
      } else {
        log('Product is already in the wishlist.');
      }
    } else {
      log('Product is not marked as favorite.');
    }
    update();
  }

  void removeProductFromWishlist(PlantModel product) async {
    if (wishlist.contains(product)) {
      wishlist.remove(product);
    }
    update();
  }

  void updateIsInWishlist(PlantModel product, bool value) {
    product.isFav = value;
      isInWishlist.value = value;

    update();
  }
}
