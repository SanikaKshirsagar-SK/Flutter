import 'package:flutter/material.dart';
import 'package:product_wishlist_demo/controllers/wish_list_controller.dart';
import 'package:provider/provider.dart';

import '../controllers/product_controller.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    var providerObj = Provider.of<ProductController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("WishList"),
      ),
      body: Consumer<WishListController>(builder: (context, value, child) {
        return ListView.builder(
            itemCount: providerObj.productModelObjList.length,
            itemBuilder: (context, index) {
              return Row(children: [
                Image.network(
                  "${providerObj.productModelObjList[index].productImageURL}",
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                        "${providerObj.productModelObjList[index].productName}"),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                        "${providerObj.productModelObjList[index].productPrice}"),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Provider.of<WishListController>(context,listen: false)
                            .removeFromWishList(index: index);
                      },
                      child: Icon((providerObj
                                    .productModelObjList[index].isFavorite)
                                ? Icons.favorite_rounded
                                : Icons.favorite_outline_rounded)
                    )
                  ],
                )
              ]);
            });
      }),
    );
  }
}
