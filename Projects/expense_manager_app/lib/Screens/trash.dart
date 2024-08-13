import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'about.dart';
import 'category.dart';
import 'graph.dart';
import 'transaction.dart';

class Trash extends StatefulWidget {
  const Trash({super.key});

  @override
  State<Trash> createState() => _TrashState();
}

class _TrashState extends State<Trash> {
  List<Map<String, dynamic>> drawerItem = [
    {
      'logo': "assets/transaction.svg",
      'name': "Transaction",
      'navigate': const Transaction(),
    },
    {
      'logo': "assets/graph.svg",
      'name': "Graphs",
      'navigate': const Graph()
    },
    {
      'logo': "assets/category.svg",
      'name': "Category",
      'navigate': const Category()
    },
    {
      'logo': "assets/trash.svg",
      'name': "Trash",
      'navigate': const Trash()
    },
    {
      'logo': "assets/about.svg",
      'name': "About",
      'navigate': const About()
    },
  ];

  List<Map<String, String>> category = [
    {
      'logo': "assets/medicine.svg",
      'name': "Medicine",
      'description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more",
      'price': "500",
    },
    {
      'logo': "assets/food.svg",
      'name': "Food",
      'description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more",
      'price': "650",
    },
    {
      'logo': "assets/shopping.svg",
      'name': "Shopping",
      'description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more",
      'price': "325",
    },
    {
      'logo': "assets/fuel.svg",
      'name': "Fuel",
      'description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more",
      'price': "600",
    },
    {
      'logo': "assets/entertainment.svg",
      'name': "Entertainment",
      'description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more",
      'price': "475",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: const Text(
          "Trash",
          style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 24 / 16,
              color: Color.fromRGBO(33, 33, 33, 1)),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(right: 50),
          children: <Widget>[
            const DrawerHeader(
                margin: EdgeInsetsDirectional.only(bottom: 2),
                padding: EdgeInsets.only(bottom: 5),
                child: Column(
                  children: [
                    Text("Expense Manager"),
                    Text("Saves all your Transactions"),
                  ],
                )),
            ...drawerItem.map(
              (item) {
                return ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => item['navigate'])));
                  },
                  leading: SvgPicture.asset(item['logo']),
                  hoverColor: const Color.fromRGBO(14, 161, 125, 0.15),
                  title: Text(item['name'],
                      style: const TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 24 / 16,
                          color: Color.fromRGBO(33, 33, 33, 1))),
                );
              },
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: category.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/minus2.svg",
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    SizedBox(
                                      width: 150,
                                      child: Text(
                                        category[index]['name']!,
                                        style: const TextStyle(
                                            fontFamily: 'poppins',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            height: 22.5 / 15,
                                            color: Color.fromRGBO(0, 0, 0, 1)),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 140,
                                    ),
                                    Text(
                                      category[index]['price']!,
                                      style: const TextStyle(
                                          fontFamily: 'poppins',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          height: 22.5 / 15,
                                          color: Color.fromRGBO(0, 0, 0, 1)),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 45,
                                    ),
                                    Container(
                                      width: 280,
                                      child: Text(
                                        category[index]['description']!,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontFamily: 'poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            height: 15 / 10,
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.8)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "3 June | 11:50 AM",
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  height: 15 / 10,
                                  color: Color.fromRGBO(0, 0, 0, 0.6)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 0.5,
                          color: const Color.fromRGBO(206, 206, 206, 1),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
