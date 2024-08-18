import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_ui/screens/home.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          children: [
            Container(
              height: 32,
              color: const Color.fromRGBO(123, 123, 123, 1),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const Home()));
                      },
                      child: const Icon(Icons.arrow_back,
                          size: 30, color: Color.fromRGBO(0, 0, 0, 1))),
                          const SizedBox(height: 40,),
                  Center(
                    child: Image.asset(
                      "assets/6.jpg",
                      alignment: Alignment.center,
                      height: 350,
                      width: 230,
                    ),
                  ),
                  Center(
                    child: SvgPicture.asset(
                      "assets/dots.svg",
                      alignment: Alignment.center,
                      height: 8,
                      width: 40,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(11),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Snake Plants",
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                color: Color.fromRGBO(48, 48, 48, 1),
                                height: 33 / 22)),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            "Plansts make your life with minimal and happy love the plants more and enjoy life.",
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Color.fromRGBO(48, 48, 48, 1),
                                height: 33 / 22)),
                        const SizedBox(
                          height: 35,
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(118, 152, 75, 1)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    "assets/height.svg",
                                    height: 74,
                                    width: 64,
                                  ),
                                  SvgPicture.asset(
                                    "assets/temp.svg",
                                    height: 74,
                                    width: 64,
                                  ),
                                  SvgPicture.asset(
                                    "assets/pot.svg",
                                    height: 74,
                                    width: 64,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                      const SizedBox(width: 10,),
            
                                  const Column(
                                    children: [
                                      Text("Total Price",
                                          style: TextStyle(
                                              fontFamily: 'poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.8),
                                              height: 21 / 14)),
                                      Text("₹ 350",
                                          style: TextStyle(
                                              fontFamily: 'poppins',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              color:
                                                  Color.fromRGBO(255, 255, 255, 1),
                                              height: 27 / 18)),
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 48.39,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.06),
                                        color:
                                            const Color.fromRGBO(103, 133, 74, 1)),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset("assets/cart.svg",
                                        height: 40,
            
                                        ),const SizedBox(width:10),
                                        const Text("Add to cart",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'poppins',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.52,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                height: 26.13 / 14.52)),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
