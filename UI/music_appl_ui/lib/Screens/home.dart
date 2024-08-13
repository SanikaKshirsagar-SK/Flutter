
import 'package:flutter/material.dart';

import 'gallery.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            "assets/first.png",
            height: 648,
            width: 497,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 440,
            child: Column(
              children: [
                Container(
                  height: 140,
                  width: 380,
                  padding: const EdgeInsets.only(left: 44),
                  child: const Text(
                    "Dancing between The shadows        Of rhythm",
                    style: TextStyle(
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 36,
                        height: 43.57 / 36,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 261,
                  height: 47,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(255, 46, 0, 1),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(19)))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Gallery()));
                      },
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                            fontFamily: 'inter',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            height: 24.2 / 20,
                            color: Color.fromRGBO(19, 19, 19, 1)),
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 261,
                  height: 47,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(19)),
                              side: BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(255, 61, 0, 1)))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Gallery()));
                      },
                      child: const Text(
                        "Continue with Email",
                        style: TextStyle(
                            fontFamily: 'inter',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            height: 24.2 / 20,
                            color: Color.fromRGBO(255, 46, 0, 1)),
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 34,
                  width: 240,
                  child: const Text(
                    "By continuing you agree to terms of services and Privacy policy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        height: 16.94 / 14,
                        color: Color.fromRGBO(203, 200, 200, 1)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
