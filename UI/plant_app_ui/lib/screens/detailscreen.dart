import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/controllers/cartcontroller.dart';
import 'package:plant_app_ui/screens/home.dart';
import 'package:plant_app_ui/widget.dart';
import '../model/plantModel.dart';
import 'cartscreen.dart';

class DetailScreen extends StatefulWidget {
  final PlantModel plant;

  const DetailScreen({super.key, required this.plant});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
    CartController cartController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new,
                            size: 30, color: Color.fromRGBO(0, 0, 0, 1)),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Container(
                          height: 350,
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(widget.plant.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Center(
                      //   child: SvgPicture.asset(
                      //     "assets/dots.svg",
                      //     alignment: Alignment.center,
                      //     height: 8,
                      //     width: 40,
                      //   ),
                      // ),
                      Container(
                        padding: const EdgeInsets.all(11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.plant.name,
                                style: textStyleData(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 30,
                                    height: 33 / 22)),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(widget.plant.description,
                                style: textStyleData(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: const Color.fromRGBO(48, 48, 48, 1),
                                    height: 33 / 22)),
                            const SizedBox(
                              height: 35,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Image.network(
                                          "https://cdn4.iconfinder.com/data/icons/liny/24/line-height-line-64.png",
                                          height: 35,
                                          width: 35,
                                        ),sizedBox10(),
                                        Text(
                                          "Height",
                                          style: textStyleData(
                                            fontWeight: FontWeight.bold,
                                            height: 1.0,
                                          ),
                                        ),sizedBox10(),
                                        Text(
                                          widget.plant.height.toString(),
                                          style: textStyleData(
                                              fontWeight: FontWeight.normal),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.network(
                                          "https://cdn1.iconfinder.com/data/icons/farming-agriculture-3/42/temperature-256.png",
                                          height: 35,
                                          width: 35,
                                        ),sizedBox10(),
                                        Text(
                                          "Temperature",
                                          style: textStyleData(
                                              fontWeight: FontWeight.bold),
                                        ),sizedBox10(),
                                        Text(
                                          textAlign: TextAlign.center,
                                          widget.plant.sunlight
                                                      .toString()
                                                      .length >
                                                  7
                                              ? '${widget.plant.sunlight.toString().substring(0, 7)}\n${widget.plant.sunlight.toString().substring(7)}'
                                              : widget.plant.sunlight
                                                  .toString(),
                                          style: textStyleData(
                                            fontWeight: FontWeight.normal,
                                          ),
                                        )
                                      ],
                                    ),
                                    // Column(
                                    //   children: [
                                    //     Image.network(
                                    //       "https://cdn1.iconfinder.com/data/icons/farming-agriculture-3/42/temperature-256.png",
                                    //       height: 35,
                                    //       width: 35,
                                    //     ),
                                    //     Text(
                                    //       'Pot Size',
                                    //       style: textStyleData(
                                    //           fontWeight: FontWeight.normal),
                                    //     ),
                                    //     Text(
                                    //       widget.plant.potSize.toString(),
                                    //       style: textStyleData(
                                    //           fontWeight: FontWeight.normal),
                                    //     )
                                    //   ],
                                    // ),

                                    Column(
                                      children: [
                                        Image.network(
                                          "https://cdn1.iconfinder.com/data/icons/soil-and-gardening/64/water-64.png",
                                          height: 34,
                                          width: 34,
                                        ),sizedBox10(),
                                        Text(
                                          'Soil Type',
                                          textAlign: TextAlign.center,
                                          style: textStyleData(
                                              fontWeight: FontWeight.bold),
                                        ),sizedBox10(),
                                        Text(
                                          textAlign: TextAlign.center,
                                          widget.plant.soilType
                                                      .toString()
                                                      .length >
                                                  13
                                              ? '${widget.plant.soilType.toString().substring(0, 13)}\n${widget.plant.soilType.toString().substring(13)}'
                                              : widget.plant.soilType
                                                  .toString(),
                                          style: textStyleData(
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.network(
                                          "https://cdn1.iconfinder.com/data/icons/weather-340/46/rain_droplets_drip_forecast_water_weather-64.png",
                                          height: 34,
                                          width: 34,
                                        ),sizedBox10(),
                                        Text(
                                          'Watering',
                                          style: textStyleData(
                                              fontWeight: FontWeight.bold),
                                        ),sizedBox10(),
                                        Text(
                                          widget.plant.watering.toString(),
                                          style: textStyleData(
                                              fontWeight: FontWeight.normal),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.only(
                top: 20,
                left: 50,
                right: 50,
              ),
// alignment: Alignment.center,
              height: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Color.fromRGBO(118, 152, 75, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text("Total Price",
                          style: textStyleData(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: const Color.fromRGBO(255, 255, 255, 0.8),
                              height: 21 / 14)),
                      Text("₹ ${widget.plant.price}",
                          style: textStyleData(
                              fontWeight: FontWeight.w600,
                              fontSize: 28,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              height: 27 / 18)),
                    ],
                  ),
                  // const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      cartController.addProductToCart(widget.plant);
                      Get.to(() => const CartScreen());
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      height: 58,
                      // width: 120, // Set a fixed width
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(103, 133, 74, 1)),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.shopping_cart,
                            size: 30,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 10),
                          Text("Add to cart",
                              textAlign: TextAlign.center,
                              style: textStyleData(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  height: 26.13 / 14.52)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
