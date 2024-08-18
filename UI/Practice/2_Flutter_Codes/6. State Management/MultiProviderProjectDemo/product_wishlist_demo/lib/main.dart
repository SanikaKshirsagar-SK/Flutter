import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/product_controller.dart';
import 'controllers/wish_list_controller.dart';
import 'views/get_product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return ProductController();
        }),
        ChangeNotifierProvider(create: (context) {
          return WishListController();
        })
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GetProductDetails()
      ),
    );
  }
}
