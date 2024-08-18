import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/controllers/plantController.dart';

import '../widget.dart';
import 'cartscreen.dart';
import 'home.dart';
import 'plantCategory.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final PlantController _plantController = Get.find<PlantController>();
  final RxBool _isSearching = false.obs;
// @override
// void dispose() {
//   _searchController.dispose();
//   Get.delete<HomeController>();
//   super.dispose();
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: customAppBar1(
        title: 'Search Here',
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: GestureDetector(
            onTap: () {
              Get.to(() => const HomeScreen());
            },
             child: const Icon(Icons.arrow_back_ios, size: 30, ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: GestureDetector(
              onTap: () {
                Get.to(() => const CartScreen());
              },
              child: const Icon(Icons.shopping_bag_rounded, size: 30, color: Color.fromRGBO(118, 152, 75, 1),),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Obx(() => _isSearching.value
                ? Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Search results for "${_searchController.text}"',
                          style: textStyleData16(),
                        ),
                      ),
                    ],
                  )
                : customTextField1(
                    'Search',
                    controller: _searchController,
                  )),
            const SizedBox(height: 20),
            Obx(() => _isSearching.value
                ? 
                // createPlantListScreen(_plantController.searchedProducts[index])
                Flexible(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: .4,
                      ),
                      itemCount: _plantController.searchedProducts.length,
                      itemBuilder: (context, index) {
                        return CreateGridItem(
                            index: index,
                            plant: _plantController.searchedProducts[index]);
                      },
                    ),
                  )
                : customButtonRounded(
                    onPressed: () {
                      _plantController.searchProducts(_searchController.text);
                      _isSearching.value = true;
                    },
                    color:  const Color.fromRGBO(118, 152, 75, 1),
                    buttonText: 'Search Plant',
                  )),
          ],
        ),
      ),
    );
  }
}
