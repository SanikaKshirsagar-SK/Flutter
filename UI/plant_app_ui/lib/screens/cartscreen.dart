import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

import '../controllers/cartcontroller.dart';
import '../controllers/ordercontroller.dart';
import '../controllers/wishlistcontroller.dart';
import '../model/orderhistorymodel.dart';
import '../model/plantModel.dart';
import '../widget.dart';
import 'home.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  CartScreenState createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> {
  final CartController _cartController = Get.find<CartController>();
  final OrderController _orderController = Get.find<OrderController>();
  WishlistController wishlistController = Get.find<WishlistController>();

  @override
  void initState() {
    super.initState();
    _cartController.fetchCartDataFromDB();
  }

  Widget _buildCartProductItem(int index) {
    return Slidable(
      closeOnScroll: true,
      key: UniqueKey(),
      endActionPane: ActionPane(
        extentRatio: 0.3,
        motion: const DrawerMotion(),
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(height: 5),
                  Container(
                    height: 70,
                    width: 190,
                    padding: const EdgeInsets.only(left: 20),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                      ),
                      color: Color.fromRGBO(118, 152, 75, 1),
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          child: const Icon(
                            Icons.favorite,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            size: 25,
                          ),
                          onTap: () {
                            PlantModel currentProduct =
                                _cartController.cartProducts[index];

                            if (!wishlistController.wishlist.any(
                                (product) => product.id == currentProduct.id)) {
                              wishlistController
                                  .addProductToWishlist(currentProduct);
                            }
                            _cartController
                                .removeProductFromCart(currentProduct);

                            Slidable.of(context)?.close();
                          },
                        ),
                        const SizedBox(width: 10),
                        sizedBoxWidth20(),
                        sizedBoxWidth20(),
                        GestureDetector(
                            child: const Icon(
                              Icons.delete_forever,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              size: 25,
                              // width: 25,
                            ),
                            onTap: () {
                              PlantModel currentProduct =
                                  _cartController.cartProducts[index];
                              _cartController
                                  .removeProductFromCart(currentProduct);
                              Slidable.of(context)?.close();
                            })
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      direction: Axis.horizontal,
      child: ContainerView1(
        backgroundColor: colorsList[index % (colorsList.length - 2)],
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ClipOval(
                child: Image.network(
                  _cartController.cartProducts[index].image,
                  width: 108,
                  height: 142,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            sizedBoxWidth20(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _cartController.cartProducts[index].name
                                .split(' ')
                                .take(3)
                                .join(' ')
                                .length >
                            15
                        ? '${_cartController.cartProducts[index].name.split(' ').take(3).join(' ').substring(0, 15)}...'
                        : '${_cartController.cartProducts[index].name.split(' ').take(3).join(' ')}...',
                    style: textStyleData18(),
                  ),
                  // Text(
                  //   'Size ${_cartController.cartProducts[index].size}',
                  //   style: textStyleData(14, 400, 18, [121, 119, 128, 1]),
                  // ),
                  Text(
                    '₹${_cartController.cartProducts[index].price * (_cartController.cartProducts[index].quantity)}',
                    style: textStyleData1(26, 400, 26, [13, 13, 14, 1]),
                  ),
                ],
              ),
            ),
            sizedBoxWidth20(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    _cartController.decrementProductCount(index);
                  },
                  child: const Icon(
                    Icons.remove,
                    color: Color.fromRGBO(13, 13, 14, 1),
                    size: 25,
                  ),
                ),
                sizedBoxWidth10(),
                Obx(() => Text(
                      '${_cartController.cartProducts[index].quantity}',
                      style: textStyleHeadingData(),
                    )),
                sizedBoxWidth10(),
                GestureDetector(
                  onTap: () {
                    _cartController.incrementProductCount(index);
                  },
                  child: const Icon(
                    Icons.add,
                    color: Color.fromRGBO(13, 13, 14, 1),
                    size: 25,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 40,
            )
          ],
        ),
      ),
    );
  }

  Widget buildCartSummary() {
    _cartController.updateTotal(_cartController.cartTotal.value);
    _cartController.updateTotalQuantity(_cartController.totalCount.value);

    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          const Divider(
            thickness: 2,
          ),
          sizedBox20(),
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Items (${_cartController.totalCount.value})',
                    style: textStyleData1(18, 400, 18, [121, 119, 128, 1]),
                  ),
                  Text(
                    '₹${_cartController.totalPrice.value.toStringAsFixed(2)}',
                    style: textStyleData1(18, 600, 18, [13, 13, 14, 1]),
                  ),
                ],
              )),
          sizedBox20(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Standard Delivery ',
                style: textStyleData1(18, 400, 18, [121, 119, 128, 1]),
              ),
              Text(
                '₹${_cartController.deliveryCharge.value.toStringAsFixed(2)}',
                style: textStyleData1(18, 600, 18, [13, 13, 14, 1]),
              ),
            ],
          ),
          sizedBox20(),
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Payment ',
                    style: textStyleData1(18, 400, 18, [121, 119, 128, 1]),
                  ),
                  Text(
                    '₹${(_cartController.cartTotal.toStringAsFixed(2))}',
                    style: textStyleData1(18, 600, 18, [13, 13, 14, 1]),
                  ),
                ],
              )),
          sizedBox20(),
          sizedBox20(),
        ],
      ),
    );
  }

  Widget _buildCheckoutButton() {
    return customButtonRounded(
      fontSize: 25,
      fontWeight: 700,
      color: const Color.fromRGBO(118, 152, 75, 1),
      onPressed: () {
        log(
          'Cart Total from cartcontroller: ${_cartController.cartTotal.value.toString()}',
        );
        log(
          'Total price from cartcontroller: ${_cartController.totalPrice.value.toString()}',
        );
        log(
          'Total from cartcontroller: ${_cartController.total}',
        );
        OrderModel newOrder = OrderModel(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          name: 'Order ${_orderController.orderList.length + 1}',
          image: _cartController.cartProducts[0].image,
          orderDate: DateFormat('dd MMMM yyyy, HH:mm').format(DateTime.now()),
          cartTotal: _cartController.cartTotal.value,
          price: 0.0,
          plants: _cartController.cartProducts.toList(),
        );

        for (var product in _cartController.cartProducts) {
          newOrder.price += product.price;
          // newOrder.products.add(product);
        }
        _orderController.addOrderToHistory(newOrder);

        for (var product in _cartController.cartProducts) {
          _cartController.removeProductFromCart(product);
        }

        _cartController.cartProducts.clear();
        _cartController.updateCountsAndPrices();
        // Get.to(() => const PaymentOptionsView());
      },
      buttonText: 'Checkout Now',
    );
  }

  Widget _buildEmptyCart() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/emptybag1.png'),
          ),
          const SizedBox(height: 50),
          Text('Your cart is empty', style: textStyleData18()),
          const SizedBox(height: 10),
          Text('Add products to your cart to see them here',
              style: textStyleData18(color: Colors.grey)),
          const SizedBox(height: 20),
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
                Get.to(const HomeScreen());
              },
              child: Text(
                'Shop Now',
                style: textStyleData1(20, 500, 20, [118, 152, 75, 1]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: customAppBar1(
        title: 'Cart Details',
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios_new_sharp, size: 25),
          ),
        ),
      ),
      body: Obx(() => _cartController.cartProducts.isEmpty
          ? _buildEmptyCart()
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(20),
                    itemCount: _cartController.cartProducts.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [_buildCartProductItem(index), sizedBox10()],
                      );
                    },
                  ),
                ),
                buildCartSummary(),
                _buildCheckoutButton(),
              ],
            )),
    );
  }
}
