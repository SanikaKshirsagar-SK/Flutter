import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/screens/detailscreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset("assets/design2.svg",
                          height: 90,
                          width: 177,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 20),
                          height: 100,
                          width: 196,
                          child: const Text("Find your favorite plants",
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 26,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  height: 32 / 24)),
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          "assets/cart.svg",
                          height: 110,
                          width: 110,
                          alignment: Alignment.center,
                        )
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
                                  //color: const Color.fromRGBO(204, 231, 185, 1),
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color.fromRGBO(204, 231, 185, 1),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 40,
                                      ),
                                      const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("30% OFF",
                                              style: TextStyle(
                                                  fontFamily: 'poppins',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 26,
                                                  color: Color.fromRGBO(0, 0, 0, 1),
                                                  height: 32 / 24)),
                                          Text("02-23 May",
                                              style: TextStyle(
                                                  fontFamily: 'poppins',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(0, 0, 0, 0.6),
                                                  height: 32 / 24)),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 70,
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
                    Center(child: SvgPicture.asset("assets/dots.svg")),
                    
                    const Text("Indoor",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            height: 32 / 24)),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      height: 220,
                      child: ListView.builder(
                          itemCount: 7,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const DetailScreen();
                                }));
                              },
                              child: Row(
                                children: [
                                  Container(
                                    height: 188,
                                    width: 141,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(255, 255, 255, 1),
                                      borderRadius: BorderRadius.circular(9.4),
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Image.asset(
                                          "assets/6.jpg",
                                          width: 90.24,
                                          height: 112.8,
                                        ),
                                        const Text("Snake Plants",
                                            style: TextStyle(
                                                fontFamily: 'dm sans',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13.16,
                                                color: Color.fromRGBO(48, 18, 48, 1),
                                                height: 17.13 / 13.16)),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            const Text("₹350",
                                                style: TextStyle(
                                                  fontFamily: 'poppins',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16.92,
                                                  color:
                                                      Color.fromRGBO(62, 102, 24, 1),
                                                  height: 25.38 / 16.92,
                                                )),
                                            const Spacer(),
                                            SvgPicture.asset("assets/cart.svg",
                                                height: 44, width: 44)
                                          ],
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
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 20),
                  height: 1, 
                  width: 370, 
                  color: const Color.fromRGBO(204, 211, 196, 1), 
                  ),
                  const SizedBox(height: 15,),
                  const Text("Outdoor",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            height: 32 / 24)),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      height: 220,
                      child: ListView.builder(
                          itemCount: 7,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const DetailScreen();
                                }));
                              },
                              child: Row(
                                children: [
                                  Container(
                                    height: 188,
                                    width: 141,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(255, 255, 255, 1),
                                      borderRadius: BorderRadius.circular(9.4),
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Image.asset(
                                          "assets/6.jpg",
                                          width: 90.24,
                                          height: 112.8,
                                        ),
                                        const Text("Snake Plants",
                                            style: TextStyle(
                                                fontFamily: 'dm sans',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13.16,
                                                color: Color.fromRGBO(48, 18, 48, 1),
                                                height: 17.13 / 13.16)),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            const Text("₹350",
                                                style: TextStyle(
                                                  fontFamily: 'poppins',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16.92,
                                                  color:
                                                      Color.fromRGBO(62, 102, 24, 1),
                                                  height: 25.38 / 16.92,
                                                )),
                                            const Spacer(),
                                            SvgPicture.asset("assets/cart.svg",
                                                height: 44, width: 44)
                                          ],
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
                    ),
                  
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
