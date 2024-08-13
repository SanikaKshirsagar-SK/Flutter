import 'package:flutter/material.dart';
import 'home_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

TextStyle textStyleData(
    double fSize, int fWeight, double fHeight, List<dynamic> colors) {
  return TextStyle(
    fontFamily: 'poppins',
    fontSize: fSize,
    fontWeight: FontWeight.values[(fWeight ~/ 100) - 1],
    height: fHeight / fSize,
    color: Color.fromRGBO(colors[0], colors[1], colors[2], colors[3].toDouble())
  );
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossA 
          children: [
            SizedBox(
              height: 700,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/home.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Lets find your Paradise",
              style: textStyleData(22, 600, 33, [0, 0, 0, 1]),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Find your perfect dream space with just a few clicks",
              style: textStyleData(15, 400, 22.5, [101, 101, 101, 1]),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                height: 55,
                width: 220,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(32, 169, 247, 1),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    }));
                  },
                  child: Text(
                    'Get Started',
                    style: textStyleData(22, 400, 33, [255, 255, 255, 1]),
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
