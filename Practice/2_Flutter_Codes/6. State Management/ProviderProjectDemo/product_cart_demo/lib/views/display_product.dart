import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:product_cart_demo/controllers/product_controller.dart';
import 'package:provider/provider.dart';

class ProductDisplay extends StatefulWidget {
  const ProductDisplay({super.key});

  @override
  State<ProductDisplay> createState() => _ProductDisplayState();
}

class _ProductDisplayState extends State<ProductDisplay> {
  @override
  Widget build(BuildContext context) {
    log("PRODUCT DISPLAY");

    var providerObj = Provider.of<ProductController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Product"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(children: [
            Image.network("${providerObj.productModelObj?.productImageURL}"),
            const SizedBox(
              height: 30,
            ),
            Text("${providerObj.productModelObj!.productName}"),
            const SizedBox(
              height: 30,
            ),
            Text("${providerObj.productModelObj!.productPrice}"),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Consumer(builder: (context, value, child) {
                  log("CONSUMER ADD FAVORITE");
                  return GestureDetector(
                    onTap: () {
                      providerObj.addFavorite();
                    },
                    child: Icon((providerObj.productModelObj!.isFavorite!)
                        ? Icons.favorite_rounded
                        : Icons.favorite_outline_rounded),
                  );
                }),
                // const Spacer(),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        providerObj.removeQuantity();
                      },
                      child: const Icon(Icons.remove),
                    ),
                    const SizedBox(
              width: 10,
            ),
                    Consumer<ProductController>(
                        builder: (context, value, child) {
                      log("CONSUMER QUANTITY");
                      return Text("${providerObj.productModelObj!.quantity}");
                    }),
                    const SizedBox(
              width: 10,
            ),
                    GestureDetector(
                      onTap: () {
                        providerObj.addQuantity();
                      },
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
