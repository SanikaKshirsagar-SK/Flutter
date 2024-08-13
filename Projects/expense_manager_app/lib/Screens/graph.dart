import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:expense_manager_app/Model/expense_model.dart';
import 'category.dart';
import 'transaction.dart';

class Graph extends StatefulWidget {
  const Graph({super.key});

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  List<Map<String, dynamic>> drawerItem = [
    {
      'logo': "assets/transaction.svg",
      'name': "Transaction",
      'navigate': const Transaction(),
    },
    {
      'logo': "assets/graph.svg",
      'name': "Graphs",
      'navigate': const Transaction()
    },
    {
      'logo': "assets/category.svg",
      'name': "Category",
      'navigate': const Category()
    },
    {
      'logo': "assets/trash.svg",
      'name': "Trash",
      'navigate': const Transaction()
    },
    {
      'logo': "assets/about.svg",
      'name': "About",
      'navigate': const Transaction()
    },
  ];

  Map<String, double> pieChartItems = {
    'Food': 650,
    'Fuel': 600,
    'Medicine': 500,
    'Entertainment': 475,
    'Shopping': 325,
  };

  List<CategoryModel> category = [
    (CategoryModel(
      imgURL: "assets/food.svg",
      categoryName: "Food",
    )),
    (CategoryModel(
      imgURL: "assets/fuel.svg",
      categoryName: "Fuel",
    )),
    (CategoryModel(
      imgURL: "assets/medicine.svg",
      categoryName: "Medicine",
    )),
    (CategoryModel(
      imgURL: "assets/shopping.svg",
      categoryName: "Shopping",
    )),
    (CategoryModel(
      imgURL: "assets/entertainment.svg",
      categoryName: "Entertainment",
    )),
  ];

  List<Color> colors = [
    const Color.fromRGBO(214, 3, 3, 0.7),
    const Color.fromRGBO(0, 148, 255, 0.7),
    const Color.fromRGBO(0, 174, 91, 0.7),
    const Color.fromRGBO(100, 62, 255, 0.7),
    const Color.fromRGBO(241, 38, 196, 0.7),
  ];

  String calculateTotal(Map<String, double> data) {
    return data.values.reduce((a, b) => a + b).toString();
  }

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
            "Graph",
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
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 20),
            child: Column(children: [
              const SizedBox(
                  // height: 100,
                  ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: PieChart(
                  dataMap: pieChartItems,
                  // animationDuration: const Duration(milliseconds: 2000),
                  chartType: ChartType.ring,
                  chartRadius: 200,
                  ringStrokeWidth: 30,
                  colorList: colors,
                  centerWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Total",
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              height: 15 / 10,
                              color: Color.fromRGBO(0, 0, 0, 1)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "₹ ",
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  height: 19.5 / 13,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                            ),
                            Text(
                              calculateTotal(pieChartItems),
                              style: const TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  height: 19.5 / 13,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ],
                        )
                      ]),
                  chartValuesOptions: const ChartValuesOptions(
                      showChartValues: false, showChartValueBackground: false),
                  // legendOptions: const LegendOptions(
                  //     legendPosition: LegendPosition.bottom,
                  //     legendShape: BoxShape.rectangle,
                  //     showLegends: false)
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                  width: double.infinity,
                  height: 0.5,
                  color: const Color.fromRGBO(0, 0, 0, 0.5)),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                height: 380,
                child: ListView.builder(
                    itemCount: category.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(children: [
                            Container(
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              child: ClipOval(
                                child: SvgPicture.asset(
                                  category[index].imgURL!,
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              category[index].categoryName!,
                              style: const TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  height: 22.5 / 15,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                            ),
                            const Spacer(),
                            const Text(
                              "₹ ",
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  height: 22.5 / 15,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                            ),
                            Text(
                              pieChartItems[pieChartItems.keys.elementAt(index)]
                                  .toString(),
                              style: const TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  height: 22.5 / 15,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                            ),
                            
                            const SizedBox(
                              width: 20,
                            ),
                            SvgPicture.asset(
                              "assets/arrow.svg",
                              height: 10,
                              width: 10,
                            ),
                          ]),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      );
                    }),
              ),
              Container(
                height: 0.5,
                width: double.infinity,
                color: const Color.fromRGBO(0, 0, 0, 0.5),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'Total',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 24 / 16,
                          color: Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    const Spacer(),
                    const Text(
                      "₹ ",
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          height: 22.5 / 15,
                          color: Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    Text(
                      calculateTotal(pieChartItems),
                      style: const TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          height: 22.5 / 15,
                          color: Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    // const Text(
                    //   ".00",
                    //   style: TextStyle(
                    //       fontFamily: 'poppins',
                    //       fontSize: 15,
                    //       fontWeight: FontWeight.w600,
                    //       height: 22.5 / 15,
                    //       color: Color.fromRGBO(0, 0, 0, 1)),
                    // ),
                    const SizedBox(width: 30),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
