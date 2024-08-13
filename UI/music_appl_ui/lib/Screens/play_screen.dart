import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  
  // static const TextStyle optionStyle1 = TextStyle(
  //   fontFamily: 'inter',
  //   fontWeight: FontWeight.w400,
  //   fontSize: 24,
  //   height: 29.05/24,
  //   color: Color.fromRGBO(230, 154, 21, 1),
  // );

   int _selectedIndex = 0;

  static const TextStyle _selectedLabelStyle = TextStyle(
     fontFamily: 'abel',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 15.29/12,
    color: Color.fromRGBO(230,154,21,1),
  );

  static const TextStyle _unselectedLabelStyle = TextStyle(
    fontFamily: 'abel',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 15.29/12,
    color: Color.fromRGBO(157, 178, 208, 1),
  );

  final List<BottomNavigationBarItem> _bottomNavBarItems = const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite_outline_outlined),
      label: 'Favorite',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart_rounded),
      label: 'Cart',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.people_rounded),
      label: 'Profile',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                "assets/4.png",
                height: 551,
                width: 550,
              ),
              Container(
                padding: const EdgeInsets.only(top: 475),
                alignment: Alignment.center,
                child: const Text("Alone in the Abyss",
                    style: TextStyle(
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      height: 29.05 / 24,
                      color: Color.fromRGBO(230, 154, 21, 1),
                    )),
              ),
              Container(
                padding: const EdgeInsets.only(top: 503),
                alignment: Alignment.center,
                child: const Text("Youlakou",
                    style: TextStyle(
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      height: 15.73 / 13,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    )),
              ),
              Container(
                padding: const EdgeInsets.only(top: 518, right: 22),
                child: Row(
                  children: [
                    const Spacer(),
                    SvgPicture.asset("assets/upload.svg"),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height:15
          ),
          const Padding(
            padding: EdgeInsets.only(left: 17, right: 17),
            child: Row(
              children: [
                Text("Dynamic Warmup |",
                    style: TextStyle(
                      fontFamily: 'segoe UI',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 18.62 / 14,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    )),
                Spacer(),
                Text("4 min",
                    style: TextStyle(
                      fontFamily: 'segoe UI',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 18.62 / 14,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    )),
              ],
            ),
          ),
          const SizedBox(
            height:15
          ),
          Container(
            padding: const EdgeInsets.all(15),
            // alignment: Alignment.center,
            child: LinearPercentIndicator(
              width: 370,
              lineHeight: 6.0,
              percent: 0.3,
              barRadius: const Radius.circular(15),
              progressColor: const Color.fromRGBO(230, 154, 21, 1),
              backgroundColor: const Color.fromRGBO(217, 217, 217, 0.19),
            ),
          ),
          const SizedBox(
            height:20
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset("assets/shuffle.svg"),
              SvgPicture.asset("assets/prev.svg"),
              SvgPicture.asset("assets/play.svg"),
              SvgPicture.asset("assets/next.svg"),
              SvgPicture.asset("assets/volume.svg"),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(19,19,19,1),
        items: _bottomNavBarItems,
        currentIndex: _selectedIndex,
        selectedItemColor:const Color.fromRGBO(230,154,21,1),
        unselectedItemColor:const Color.fromRGBO(157, 178, 208, 1),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: _selectedLabelStyle,
        unselectedLabelStyle: _unselectedLabelStyle,
      ),
    );
  }
}
