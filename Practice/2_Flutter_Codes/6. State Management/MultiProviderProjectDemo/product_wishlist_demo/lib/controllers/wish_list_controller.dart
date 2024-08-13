import 'package:flutter/material.dart';
import 'package:product_wishlist_demo/models/product_model.dart';

class WishListController extends ChangeNotifier {
  List<ProductModel> wishListModelObj = [];

  void addToWishList({required ProductModel? obj}) {
    wishListModelObj.add(obj!);
  }

  void removeFromWishList({required int index}) {
    wishListModelObj.removeAt(index);
    notifyListeners();
  }
}
