import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:plant_app_ui/screens/searchscreen.dart';
import '../controllers/dashcontroller.dart';
import '../controllers/plantController.dart';
import '../controllers/wishlistcontroller.dart';
import '../model/plantModel.dart';
import '../widget.dart';
import 'cartscreen.dart';
import 'detailscreen.dart';

class PlantCategoriesController extends GetxController {
  RxList<String> categories = RxList<String>();
  final PlantController _plantController = Get.find();

  @override
  void onInit() {
    super.onInit();
    categories.value = _plantController.getCategories();
  }
}

class PlantCategories extends GetView<PlantCategoriesController> {
  PlantCategories({super.key});
  final PlantController _plantController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(
          title: 'Categories',
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {},
          ),
        ),
        body: GetBuilder<PlantCategoriesController>(builder: (controller) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: controller.categories.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: ContainerView(
                    backgroundColor: colorsList[index % colorsList.length],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          controller.categories[index],
                          style: textStyleData(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Available plants\n ${_plantController.getPlantCount(controller.categories[index])}',
                          style: textStyleData(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Get.to(() => Scaffold(
                        body: createPlantListScreen(
                            controller.categories[index])));
                  },
                ),
              );
            },
          );
        }),
        bottomNavigationBar: const BottomNavigationBarWidget());
  }
}

Widget createPlantListScreen(String category) {

  return Scaffold(
      appBar: customAppBar(
        title: '$category Plants',
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Get.back();
          },
        ),
       actions: [
        GestureDetector(
            onTap: () {
              Get.to(() => const SearchScreen());
            },
            child: const Icon(Icons.search, size: 30, color: Color.fromRGBO(118, 152, 75, 1),),
          ),
          sizedBoxWidth10(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Get.to(() => const CartScreen());
              },
              child: const Icon(Icons.shopping_bag_rounded, size: 30, color: Color.fromRGBO(118, 152, 75, 1),),
            ),
          ),
          
        ],
      ),
      body: SafeArea(
        child: Container(
          color: const Color(0xFFF8F8F8),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: ListView(
              children: <Widget>[
                const SizedBox(height: 30),
                StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  children: Get.find<PlantController>()
                      .plants
                      .where((plant) => plant.category == category)
                      .toList()
                      .asMap()
                      .map((index, plant) {
                        return MapEntry(
                          index,
                          CreateGridItem(index: index, plant: plant),
                        );
                      })
                      .values
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget());
}

class CreateGridItem extends GetView<PlantController> {
  final int index;
  final PlantModel plant;

  CreateGridItem({super.key, required this.index, required this.plant});

  final WishlistController _wishlistController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlantController>(
      builder: (controller) {
        return GestureDetector(
          onTap: () {
            Get.to(() => DetailScreen(plant: plant));
          },
          child: ContainerView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.network(
                    plant.image,
                    width: 150,
                    height: index % 2 == 0 ? 150 : 250,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  textAlign: TextAlign.center,
                  plant.name,
                  style: const TextStyle(
                    color: Color(0xFFAAC8FC),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '₹ ${plant.price}',
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    controller.toggleFavorite(plant);
                    _wishlistController.isInWishlist.value = true;
                    _wishlistController.addProductToWishlist(plant);
                    controller.updatePlant(plant);
                  },
                  child: Icon(
                    plant.isFav ? Icons.favorite : Icons.favorite_border,
                    color: plant.isFav ? Colors.red : Colors.grey,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
