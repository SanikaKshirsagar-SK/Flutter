import 'package:flutter/material.dart';
import 'package:product_wishlist_demo/models/product_model.dart';
import 'package:product_wishlist_demo/controllers/product_controller.dart';

import 'package:provider/provider.dart';

import 'display_product.dart';

class GetProductDetails extends StatefulWidget {
  const GetProductDetails({super.key});

  @override
  State<GetProductDetails> createState() => _GetProductDetailsState();
}

class _GetProductDetailsState extends State<GetProductDetails> {
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _productImageController = TextEditingController();
  final TextEditingController _productPriceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Product"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _productNameController,
                decoration: const InputDecoration(
                    hintText: "Enter Product Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _productImageController,
                decoration: const InputDecoration(
                    hintText: "Enter Product Image",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _productPriceController,
                decoration: const InputDecoration(
                    hintText: "Enter Product Price",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    var obj = ProductModel(
                        isFavorite: false,
                        productName: _productNameController.text.trim(),
                        productImageURL: _productImageController.text.trim(),
                        productPrice: _productPriceController.text.trim(),
                        quantity: 0);
                    Provider.of<ProductController>(context, listen: false)
                        .addProductDetails(pObj: obj);
                    _productImageController.clear();
                    _productNameController.clear();
                    _productPriceController.clear();
                    
                  },
                  child: const Text("Add")),
                  const SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProductDisplay();
                    }));
              }, child: const Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }
}
