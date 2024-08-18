import 'package:flutter/material.dart';
import 'package:plant_app_ui/widget.dart';

import 'login.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => FirstScreenState();
}

class FirstScreenState extends State<FirstScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController buttonAnimationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(milliseconds: 2500),
      vsync: this,
    );
    animationController.forward(); // start the animation

    buttonAnimationController = AnimationController(
      duration: const Duration(milliseconds: 7000),
      vsync: this,
    );
    buttonAnimationController.repeat(); // // start the animation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Image.asset(
                  "assets/palm-plant.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                dynamicCircleWidget(
                    text: 'Welcome to Plantify',
                    animationController: animationController),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Image.asset(
                  "assets/palm-plant.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                dynamicCircleWidget(
                    text: 'Discover the world of plants',
                    animationController: animationController),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Stack(children: [
              Image.asset(
                "assets/palm-plant.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              dynamicCircleWidget(
                  text: 'Enjoy your life with Plants',
                  animationController: animationController),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const Login();
                        },
                      ));
                    },
                    child: TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 1),
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                      builder: (context, value, child) {
                        return AnimatedOpacity(
                          opacity: value,
                          duration: const Duration(milliseconds: 500),
                          child: child,
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            colors: [
                              Colors.grey.withOpacity(0.5),
                              Colors.grey.withOpacity(0.5)
                            ],
                          ),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 20),
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              blurRadius: 40,
                              spreadRadius: 40,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BlinkingText(
                              text: 'Get Started',
                              animationController: buttonAnimationController,
                            ),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                              size: 24,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}

Widget dynamicCircleWidget({
  required String text,
  double fontSize = 12,
  FontWeight fontWeight = FontWeight.w900,
  Color textColor = Colors.white,
  required AnimationController animationController,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 40),
    child: LayoutBuilder(
      builder: (context, constraints) {
        return AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            return Opacity(
              opacity: animationController.value, // animate the opacity
              child: Transform.translate(
                offset: Offset(
                    -constraints.maxWidth +
                        animationController.value * constraints.maxWidth,
                    0), // animate the x position
                child: child,
              ),
            );
          },
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: constraints.maxWidth * 0.35, // 20% of parent width
              height: constraints.maxWidth * 0.15, // 20% of parent width
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color.fromARGB(255, 11, 113, 36),
                    const Color.fromARGB(255, 5, 36, 12).withOpacity(0.8)
                  ],
                ),
                borderRadius:
                    const BorderRadius.horizontal(right: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 1, 34, 9)
                        .withOpacity(0.5), // shadow color
                    spreadRadius: 2, // spread radius
                    blurRadius: 5, // blur radius
                    offset: const Offset(0, 3), // offset
                  ),
                ],
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    text,
                    style: textStyleData(
                      fontSize: fontSize, // font size
                      fontWeight: fontWeight, // font weight
                      color: textColor, // text color
                      shadows: [
                        Shadow(
                          offset: const Offset(1, 1),
                          blurRadius: 2,
                          color: Colors.grey.withOpacity(0.7),
                        ),
                        Shadow(
                          offset: const Offset(1, 2),
                          blurRadius: 3,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center, // center the text
                  ),
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}

class BlinkingText extends StatelessWidget {
  final String text;
  final AnimationController animationController;

  const BlinkingText(
      {super.key, required this.text, required this.animationController});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: animationController,
      builder: (context, value, child) {
        int characterIndex = (value * text.length).floor();
        if (characterIndex >= text.length) {
          characterIndex = text.length - 1;
        }
        return Text(
          text.substring(0, characterIndex + 1),
          style: textStyleData(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }
}
