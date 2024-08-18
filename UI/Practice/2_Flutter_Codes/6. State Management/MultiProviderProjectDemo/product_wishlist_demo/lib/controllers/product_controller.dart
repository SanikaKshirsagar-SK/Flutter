import 'package:flutter/material.dart';
import 'package:product_wishlist_demo/models/product_model.dart';

class ProductController extends ChangeNotifier {
  List<ProductModel> productModelObjList = [];

  //ADD PRODUCT DETAILS
  void addProductDetails({required ProductModel pObj}) {
    productModelObjList.add(pObj);
  }

  //ADD FAVORITE
  void addFavorite({required int index}) {
    productModelObjList[index].isFavorite =
        !productModelObjList[index].isFavorite;
    notifyListeners();
  }

  //ADD QUANTITY
  void addQuantity(int index) {
    productModelObjList[index].quantity =
        productModelObjList[index].quantity + 1;
    notifyListeners();
  }

  //REMOVE QUANTITY
  void removeQuantity(int index) {
    productModelObjList[index].quantity =
        productModelObjList[index].quantity - 1;
    notifyListeners();
  }
}
