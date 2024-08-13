import 'package:flutter/material.dart';
import '../controllers/product_controller.dart';
import '/models/product_model.dart';
import 'package:provider/provider.dart';

import 'display_product.dart';

class GetProductDetails extends StatefulWidget {
  const GetProductDetails({super.key});

  @override
  State createState() => _GetProductDetailsState();
}

class _GetProductDetailsState extends State {
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _productImageController = TextEditingController();
  final TextEditingController _productPriceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Product Details"),
      ),
      body: Center(
        
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _productNameController,
                decoration: InputDecoration(
                  hintText: "Enter Product Name..",
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _productImageController,
                decoration: InputDecoration(
                  hintText: "Enter Product Image URL..",
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _productPriceController,
                decoration: InputDecoration(
                  hintText: "Enter Product Price..",
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    var obj = ProductModel(
                        isFavorite: true,
                        productName: _productNameController.text.trim(),
                        productImageURL: _productImageController.text.trim(),
                        productPrice: _productPriceController.text.trim(),
                        quantity: 0  
                      );
                    Provider.of<ProductController>(context, listen: false)
                        .addProductData(pObj: obj);
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const ProductDisplay();
                    }));
                  },
                  child: const Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }
}
