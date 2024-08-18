// wishlist_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/cartcontroller.dart';
import '../controllers/wishlistcontroller.dart';
import '../model/plantModel.dart';
import '../widget.dart';
import 'cartscreen.dart';
import 'home.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  final WishlistController _wishlistController = Get.find();
  final CartController cartController = Get.find();

  // @override
  // void dispose() {
  //   Get.delete<WishlistController>();
  //   Get.delete<CartController>();
  //   super.dispose();
  // }

  @override
  void initState() {
    super.initState();
    // _wishlistController.fetchWishlistDataFromDB();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: customAppBar1(
        title: 'Wishlist',
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios_new_sharp, size: 30),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: GestureDetector(
              onTap: () {
                Get.to(() => const CartScreen());
              },
              child: const Icon(
                Icons.shopping_bag,
                size: 35,
                color: Color.fromRGBO(118, 152, 75, 1),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Obx(() => _wishlistController.wishlist.isEmpty
            ? Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    const Icon(
                      Icons.hourglass_empty,
                      size: 100,
                    ),
                    sizedBox20(),
                    sizedBox20(),
                    Text(
                      'Your wishlist is empty',
                      style: textStyleData18(),
                    ),
                    sizedBox10(),
                    Text(
                      'Add products to your wishlist to see them here',
                      style: textStyleData16grey(),
                    ),
                    sizedBox20(),
                    sizedBox20(),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                            const Color.fromRGBO(255, 255, 255, 1),
                          ),
                          shape: WidgetStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                width: 2,
                                color: Color.fromRGBO(118, 152, 75, 1),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Get.to(() => const HomeScreen());
                        },
                        child: Text(
                          'Shop Now',
                          style: textStyleData1(
                            18,
                            600,
                            18,
                            [118, 152, 75, 1],
                          ),
                        ),
                      ),
                    )
                  ]))
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.55,
                ),
                itemCount: _wishlistController.wishlist.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      sizedBox20(),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              child: Image.network(
                                _wishlistController.wishlist[index].image,
                                height: 194,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: GestureDetector(
                                onTap: () {
                                  PlantModel product =
                                      _wishlistController.wishlist[index];
                                  _wishlistController.removeProductFromWishlist(
                                      _wishlistController.wishlist[index]);
                                  _wishlistController.updateIsInWishlist(
                                      product, false);
                                },
                                child: const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.close,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '\$${_wishlistController.wishlist[index].price}',
                              style: textStyleData18(),
                            ),
                            Text(
                              _wishlistController.wishlist[index].name
                                          .split(' ')
                                          .take(3)
                                          .join(' ')
                                          .length >
                                      15
                                  ? '${_wishlistController.wishlist[index].name.split(' ').take(3).join(' ').substring(0, 15)}...'
                                  : '${_wishlistController.wishlist[index].name.split(' ').take(3).join(' ')}...',
                              style: textStyleData16grey(),
                            ),
                            sizedBox10(),
                            SizedBox(
                              height: 35,
                              child: customButtonRounded(
                                color: const Color.fromRGBO(118, 152, 75, 1),
                                onPressed: () {
                                  PlantModel product =
                                      _wishlistController.wishlist[index];
                                  cartController.addProductToCart(
                                      _wishlistController.wishlist[index]);
                                  _wishlistController.removeProductFromWishlist(
                                      _wishlistController.wishlist[index]);
                                  _wishlistController.updateIsInWishlist(
                                      product, false);
                                },
                                buttonText: 'Move to Cart',
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              )),
      ),
    );
  }
}
