import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/product_controller.dart';
import 'views/get_product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ProductController();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const GetProductDetails(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true
        ),
      ),
    );
  }
}
