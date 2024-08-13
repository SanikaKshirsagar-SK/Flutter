import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_appl_ui/Screens/play_screen.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List discographyList = [
    {'img': 'assets/3.png', 'name': 'Dead inside', 'year': '2020'},
    {'img': 'assets/4.png', 'name': 'Alone', 'year': '2023'},
    {'img': 'assets/5.png', 'name': 'Heartless', 'year': '2022'},
    {'img': 'assets/3.png', 'name': 'Dead inside', 'year': '2020'},
    {'img': 'assets/4.png', 'name': 'Alone', 'year': '2023'},
    {'img': 'assets/5.png', 'name': 'Heartless', 'year': '2022'},
  ];

  List singlesList = [
    {
      'img': 'assets/6.png',
      'name': 'We Are Chaos',
      'year': '2020',
      'title': 'Early Living'
    },
    {
      'img': 'assets/7.png',
      'name': 'Smile',
      'year': '2023',
      'title': 'Berrechid'
    },
    {
      'img': 'assets/6.png',
      'name': 'We Are Chaos',
      'year': '2020',
      'title': 'Early Living'
    },
    {
      'img': 'assets/7.png',
      'name': 'Smile',
      'year': '2023',
      'title': 'Berrechid'
    },
  ];

  int _selectedIndex = 0;

  static const TextStyle _selectedLabelStyle = TextStyle(
    fontFamily: 'abel',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 15.29 / 12,
    color: Color.fromRGBO(230, 154, 21, 1),
  );

  static const TextStyle _unselectedLabelStyle = TextStyle(
    fontFamily: 'abel',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 15.29 / 12,
    color: Color.fromRGBO(157, 178, 208, 1),
  );

  final List<BottomNavigationBarItem> _bottomNavBarItems =
      const <BottomNavigationBarItem>[
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  "assets/2.png",
                  height: 400,
                  width: 459,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 225,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        height: 44,
                        width: 230,
                        child: const Text(
                          "A.L.O.N.E",
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
                        width: 150,
                        height: 37,
                        padding: const EdgeInsets.only(left: 20),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(255, 46, 0, 1),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(19)))),
                            onPressed: () {},
                            child: const Text(
                              "Subscribe",
                              style: TextStyle(
                                  fontFamily: 'inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  height: 19.36 / 16,
                                  color: Color.fromRGBO(19, 19, 19, 1)),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Center(child: SvgPicture.asset("assets/dotsH.svg")),
            Container(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 10),
              child: Row(
                children: [
                  const Text(
                    "Discography",
                    style: TextStyle(
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        height: 19.36 / 16,
                        color: Color.fromRGBO(255, 46, 0, 1)),
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: const Text(
                      "See all",
                      style: TextStyle(
                          fontFamily: 'inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 16.94 / 14,
                          color: Color.fromRGBO(248, 162, 69, 1)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              child: GestureDetector(
                onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const PlayScreen())
                      );
                    },
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 16),
                  itemCount: discographyList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              discographyList[index]['img'],
                              height: 140,
                              width: 119,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                        ]),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          discographyList[index]['name'],
                          style: const TextStyle(
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              height: 14.52 / 12,
                              color: Color.fromRGBO(203, 200, 200, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          discographyList[index]['year'],
                          style: const TextStyle(
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              height: 12.1 / 10,
                              color: Color.fromRGBO(132, 125, 125, 1)),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 10),
              child: Row(
                children: [
                  const Text(
                    "Popular Singles",
                    style: TextStyle(
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        height: 16.94 / 14,
                        color: Color.fromRGBO(203, 200, 200, 1)),
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: const Text(
                      "See all",
                      style: TextStyle(
                          fontFamily: 'inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 16.94 / 14,
                          color: Color.fromRGBO(248, 162, 69, 1)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                itemCount: singlesList.length,
                padding: const EdgeInsets.only(left: 20),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const PlayScreen())
                      );
                    },
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            discographyList[index]['img'],
                            height: 72,
                            width: 67,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 20),
                          height: 50,
                          width: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                singlesList[index]['name'],
                                style: const TextStyle(
                                    fontFamily: 'inter',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    height: 14.52 / 12,
                                    color: Color.fromRGBO(203, 200, 200, 1)),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Text(
                                    singlesList[index]['year'],
                                    style: const TextStyle(
                                        fontFamily: 'inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        height: 12.1 / 10,
                                        color:
                                            Color.fromRGBO(132, 125, 125, 1)),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SvgPicture.asset("assets/star.svg"),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    singlesList[index]['title'],
                                    style: const TextStyle(
                                        fontFamily: 'inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        height: 12.1 / 10,
                                        color:
                                            Color.fromRGBO(132, 125, 125, 1)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                            child: SvgPicture.asset("assets/dotsV.svg"))
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
        items: _bottomNavBarItems,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromRGBO(230, 154, 21, 1),
        unselectedItemColor: const Color.fromRGBO(157, 178, 208, 1),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: _selectedLabelStyle,
        unselectedLabelStyle: _unselectedLabelStyle,
      ),
    );
  }
}
