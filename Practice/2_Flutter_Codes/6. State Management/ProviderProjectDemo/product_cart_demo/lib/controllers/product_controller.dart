import 'package:flutter/material.dart';
import 'package:product_cart_demo/models/product_model.dart';

class ProductController extends ChangeNotifier {
  ProductModel? productModelObj;

  //ADD PRODUCT
  void addProductData({required ProductModel pObj}) {
    productModelObj = pObj;
  }

  //ADD FAVORITE
  void addFavorite() {
    productModelObj!.isFavorite = !productModelObj!.isFavorite!;
    notifyListeners();
  }

  //ADD PRODUCT QUANTITY
  void addQuantity() {
    productModelObj!.quantity = productModelObj!.quantity! + 1;
    notifyListeners();
  }

  //REMOVE PRODUCT QUANTITY
  void removeQuantity() {
    productModelObj!.quantity = productModelObj!.quantity! - 1;
    notifyListeners();
  }
}
