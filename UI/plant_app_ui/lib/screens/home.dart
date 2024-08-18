import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/screens/detailscreen.dart';
import 'package:plant_app_ui/screens/searchscreen.dart';
import 'package:plant_app_ui/screens/wishlistscreen.dart';
import 'package:plant_app_ui/widget.dart';
import '../controllers/dashcontroller.dart';
import '../controllers/plantController.dart';
import '../controllers/searchcontroller.dart';
import '../controllers/wishlistcontroller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    DashboardController dashboardController = Get.find();
    dashboardController.tabIndex.value = 0;
    return GetBuilder<PlantController>(
        init: PlantController(),
        builder: (controller) {
          return GetBuilder<WishlistController>(builder: (wishlistController) {
            return Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                  "assets/design2.svg",
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Text("Find your\nfavorite plants",
                                      style: textStyleData(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 30,
                                      )),
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {
                                    Get.to(() => const SearchScreen());
                                  },
                                  icon: const Icon(Icons.search),
                                  iconSize: 25,
                                  color: const Color.fromRGBO(118, 152, 75, 1),
                                ),
                                // sizedBoxWidth10(),
                                IconButton(
                                  onPressed: () {
                                    Get.to(() => const WishlistScreen());
                                  },
                                  icon: const Icon(
                                      Icons.favorite_border_outlined),
                                  iconSize: 25,
                                  color: const Color.fromRGBO(118, 152, 75, 1),
                                ),
                                sizedBoxWidth20(),
                                sizedBoxWidth20()
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 5),
                              height: 150,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      children: [
                                        Container(
                                          height: 108,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: Color.fromRGBO(
                                                204, 231, 185, 1),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const SizedBox(
                                                width: 40,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                      "30% OFF \nIndoor Plants",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: textStyleData(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 22,
                                                      )),
                                                  Text("01-30 Aug",
                                                      style: textStyleData(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14,
                                                      )),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 30,
                                              ),
                                              Image.asset(
                                                "assets/3.png",
                                                height: 120,
                                                width: 108,
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                      ],
                                    );
                                  }),
                            ),
                            // Center(child: SvgPicture.asset("assets/dots.svg")),

                            // createSearchView(
                            //     icon: Icons.search,
                            //     hintText: 'Search Plant',
                            //     controller:
                            //         SearchController1().searchController,
                            //     onTap: () {
                            //       Get.find<SearchController1>().searchPlants(
                            //           SearchController1()
                            //               .searchController
                            //               .text);
                            //       const SearchResultWidget();
                            //     }),
                            // sizedBox20(),
                            Text("Popular",
                                style: textStyleData(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20,
                                )),
                            Container(
                                padding: const EdgeInsets.only(top: 5),
                                height: 280,
                                child: ListView.builder(
                                    itemCount: controller.popularPlants.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          Get.to(() => DetailScreen(
                                                plant: controller
                                                    .popularPlants[index],
                                              ));
                                        },
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 240,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                borderRadius:
                                                    BorderRadius.circular(9.4),
                                              ),
                                              child: Column(
                                                children: [
                                                  ClipOval(
                                                    child: Image.network(
                                                      controller
                                                          .popularPlants[index]
                                                          .image,
                                                      width: 140,
                                                      height: 160,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                      controller
                                                          .popularPlants[index]
                                                          .name,
                                                      style: textStyleData(
                                                        fontSize: 20,
                                                      )),
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        const SizedBox(
                                                          width: 20,
                                                        ),
                                                        Text(
                                                            "₹ ${controller.popularPlants[index].price}",
                                                            style:
                                                                textStyleData(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 20,
                                                              color: const Color
                                                                  .fromRGBO(62,
                                                                  102, 24, 1),
                                                            )),
                                                        const Spacer(),
                                                        GestureDetector(
                                                          onTap: () {
                                                            controller
                                                                .toggleFavorite(
                                                                    controller
                                                                            .popularPlants[
                                                                        index]);
                                                            wishlistController
                                                                .isInWishlist
                                                                .value = true;
                                                            wishlistController
                                                                .addProductToWishlist(
                                                                    controller
                                                                            .popularPlants[
                                                                        index]);
                                                            controller.updatePlant(
                                                                controller
                                                                        .popularPlants[
                                                                    index]);
                                                          },
                                                          child: Obx(() => Icon(
                                                                controller
                                                                        .popularPlants[
                                                                            index]
                                                                        .isFav
                                                                    ? Icons
                                                                        .favorite
                                                                    : Icons
                                                                        .favorite_border,
                                                                color: controller
                                                                        .popularPlants[
                                                                            index]
                                                                        .isFav
                                                                    ? Colors.red
                                                                    : Colors
                                                                        .grey,
                                                                size: 30,
                                                              )),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            )
                                          ],
                                        ),
                                      );
                                    })),
                            Container(
                              padding: const EdgeInsets.only(right: 20),
                              height: 1,
                              width: 370,
                              color: const Color.fromRGBO(204, 211, 196, 1),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text("Recommended",
                                style: textStyleData(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20,
                                )),
                            Container(
                              padding: const EdgeInsets.only(top: 5),
                              height: 280,
                              child: ListView.builder(
                                  itemCount:
                                      controller.recommendedPlants.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Get.to(() => DetailScreen(
                                              plant: controller
                                                  .recommendedPlants[index],
                                            ));
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 240,
                                            width: 180,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              borderRadius:
                                                  BorderRadius.circular(9.4),
                                            ),
                                            child: Column(
                                              children: [
                                                ClipOval(
                                                  child: Image.network(
                                                    controller
                                                        .recommendedPlants[
                                                            index]
                                                        .image,
                                                    width: 140,
                                                    height: 160,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                    controller
                                                        .recommendedPlants[
                                                            index]
                                                        .name,
                                                    style: textStyleData(
                                                      fontSize: 20,
                                                    )),
                                                Expanded(
                                                  child: Row(
                                                    children: [
                                                      const SizedBox(
                                                        width: 20,
                                                      ),
                                                      Text(
                                                          "₹ ${controller.recommendedPlants[index].price}",
                                                          style: textStyleData(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 20,
                                                            color: const Color
                                                                .fromRGBO(
                                                                62, 102, 24, 1),
                                                          )),
                                                      const Spacer(),
                                                      GestureDetector(
                                                          onTap: () {
                                                            controller
                                                                .toggleFavorite(
                                                                    controller
                                                                            .recommendedPlants[
                                                                        index]);
                                                            wishlistController
                                                                .isInWishlist
                                                                .value = true;
                                                            wishlistController
                                                                .addProductToWishlist(
                                                                    controller
                                                                            .recommendedPlants[
                                                                        index]);
                                                            controller.updatePlant(
                                                                controller
                                                                        .recommendedPlants[
                                                                    index]);
                                                          },
                                                          child: Icon(
                                                            controller
                                                                    .recommendedPlants[
                                                                        index]
                                                                    .isFav
                                                                ? Icons.favorite
                                                                : Icons
                                                                    .favorite_border,
                                                            color: controller
                                                                    .recommendedPlants[
                                                                        index]
                                                                    .isFav
                                                                ? Colors.red
                                                                : Colors.grey,
                                                            size: 30,
                                                          )),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: const BottomNavigationBarWidget(),
            );
          });
        });
  }
}

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController1>(
      init: SearchController1(),
      builder: (controller) {
        return Scaffold(
          body: Container(
            height: 500,
            child: ListView.builder(
              //  shrinkWrap: true,
              itemCount: controller.searchResult.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(controller.searchResult[index].name),
                  onTap: () {
                    Get.to(() =>
                        DetailScreen(plant: controller.searchResult[index]));
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
