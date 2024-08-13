import 'package:flutter/material.dart';
import 'package:product_wishlist_demo/controllers/product_controller.dart';
import 'package:product_wishlist_demo/controllers/wish_list_controller.dart';
import 'package:product_wishlist_demo/views/wishlist_screen.dart';
// import 'package:product_wishlist_demo/models/product_model.dart';
import 'package:provider/provider.dart';

class ProductDisplay extends StatefulWidget {
  const ProductDisplay({super.key});

  @override
  State<ProductDisplay> createState() => _ProductDisplayState();
}

class _ProductDisplayState extends State<ProductDisplay> {
  @override
  Widget build(BuildContext context) {
    var providerObj = Provider.of<ProductController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const WishList();
                }));
              },
              icon: const Icon(
                Icons.favorite_border_rounded
              )),
        ],
        title: const Text("Product Display"),
      ),
      body: ListView.builder(
          itemCount: providerObj.productModelObjList.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.network(
                      "${providerObj.productModelObjList[index].productImageURL}"),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("${providerObj.productModelObjList[index].productName}"),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                      "${providerObj.productModelObjList[index].productPrice}"),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Consumer<ProductController>(
                          builder: (context, value, child) {
                        return GestureDetector(
                            onTap: () {
                              providerObj.addFavorite(index: index);
                              if (providerObj
                                  .productModelObjList[index].isFavorite) {
                                Provider.of<WishListController>(context, listen: false)
                                    .addToWishList(
                                        obj: providerObj
                                            .productModelObjList[index]);
                              }
                            },
                            child: Icon((providerObj
                                    .productModelObjList[index].isFavorite)
                                ? Icons.favorite_rounded
                                : Icons.favorite_outline_rounded));
                      }),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              providerObj.removeQuantity(index);
                            },
                            child: const Icon(Icons.remove),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Consumer<ProductController>(
                              builder: (context, value, child) {
                            return Text(
                                "${providerObj.productModelObjList[index].quantity}");
                          }),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              providerObj.addQuantity(index);
                            },
                            child: const Icon(Icons.add),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
