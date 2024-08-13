import 'package:expense_manager_app/Model/expense_model.dart';
import 'package:expense_manager_app/Screens/graph.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'about.dart';
import 'category.dart';
import 'trash.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  TextEditingController dateController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController descController = TextEditingController();

  List<Map<String, dynamic>> drawerItem = [
    {
      'logo': "assets/transaction.svg",
      'name': "Transaction",
      'navigate': const Transaction(),
    },
    {'logo': "assets/graph.svg", 'name': "Graphs", 'navigate': const Graph()},
    {
      'logo': "assets/category.svg",
      'name': "Category",
      'navigate': const Category()
    },
    {'logo': "assets/trash.svg", 'name': "Trash", 'navigate': const Trash()},
    {'logo': "assets/about.svg", 'name': "About", 'navigate': const About()},
  ];

  List<CardModel> categoryList = [
    (CardModel(
        logo: "assets/medicine.svg",
        date: "3 June | 11:50 AM",
        amount: "500",
        category: "Medicine",
        description: "Lorem Ipsum is simply dummy text of the")),
    (CardModel(
        logo: "assets/food.svg",
        date: "3 June | 11:50 AM",
        amount: "650",
        category: "Food",
        description: "Lorem Ipsum is simply dummy text of the")),
    (CardModel(
        logo: "assets/shopping.svg",
        date: "3 June | 11:50 AM",
        amount: "325",
        category: "Shopping",
        description: "Lorem Ipsum is simply dummy text of the")),
    (CardModel(
        logo: "assets/fuel.svg",
        date: "3 June | 11:50 AM",
        amount: "600",
        category: "Fuel",
        description: "Lorem Ipsum is simply dummy text of the")),
    (CardModel(
        logo: "assets/entertainment.svg",
        date: "3 June | 11:50 AM",
        amount: "475",
        category: "Entertainment",
        description: "Lorem Ipsum is simply dummy text of the")),
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
          "June 2022",
          style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 24 / 16,
              color: Color.fromRGBO(33, 33, 33, 1)),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset("assets/search.svg"),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
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
        child: ListView.builder(
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return Column(children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                                child: ClipOval(
                                  child: SvgPicture.asset(
                                    categoryList[index].logo!,
                                  ),
                                )),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${categoryList[index].category}",
                                    style: const TextStyle(
                                        fontFamily: 'poppins',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        height: 22.5 / 15,
                                        color: Color.fromRGBO(0, 0, 0, 1))),
                                Text(categoryList[index].description!,
                                    style: const TextStyle(
                                        fontFamily: 'poppins',
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        height: 15 / 10,
                                        color: Color.fromRGBO(0, 0, 0, 0.8)))
                              ],
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            SvgPicture.asset("assets/minus.svg"),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(categoryList[index].amount!,
                                style: const TextStyle(
                                    fontFamily: 'poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    height: 22.5 / 15,
                                    color: Color.fromRGBO(0, 0, 0, 1)))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(categoryList[index].date!,
                        style: const TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            height: 15 / 10,
                            color: Color.fromRGBO(0, 0, 0, 0.6))),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    height: 0.5,
                    width: double.infinity,
                    color: const Color.fromRGBO(206, 206, 206, 1)),
                const SizedBox(
                  height: 10,
                ),
              ]);
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: const EdgeInsets.only(left: 20, bottom: 20),
        height: 66,
        width: 186,
        child: FloatingActionButton(
          onPressed: () {
            clearController();
            showBottomSheet(false);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(67)),
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset("assets/plus.svg"),
              const Text(
                "Add Transcation",
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 18 / 12,
                  color: Color.fromRGBO(37, 37, 37, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showBottomSheet(bool doEdit, [CardModel? modelObj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 30,
                right: 30,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Date",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 24 / 16,
                            color: Color.fromRGBO(33, 33, 33, 1))),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 36,
                      child: TextField(
                        controller: dateController,
                        readOnly: true,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 10.0),
                            suffixIcon: Icon(
                              Icons.calendar_month_rounded,
                            )),
                        onTap: () async {
                          DateTime? pickDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2023),
                              lastDate: DateTime(2025));
                          if (pickDate != null) {
                            String dateFormat =
                                DateFormat.yMMMd().format(pickDate);
                            setState(() {
                              dateController.text = dateFormat;
                            });
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Amount",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 24 / 16,
                            color: Color.fromRGBO(33, 33, 33, 1))),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 36,
                      child: TextField(
                        controller: amountController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Category",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 24 / 16,
                            color: Color.fromRGBO(33, 33, 33, 1))),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 36,
                      child: TextField(
                        controller: categoryController,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 10.0),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Description",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 24 / 16,
                            color: Color.fromRGBO(33, 33, 33, 1))),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 36,
                      child: TextField(
                        controller: descController,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 10.0),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(bottom: 15),
                            height: 60,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25)),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(67),
                                ),
                                backgroundColor:
                                    const Color.fromRGBO(14, 161, 125, 1),
                              ),
                              onPressed: () {
                                doEdit
                                    ? addTask(doEdit, modelObj)
                                    : addTask(doEdit);

                                Navigator.of(context).pop();
                              },
                              child: const Text("Add",
                                  style: TextStyle(
                                      fontFamily: 'poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      height: 24 / 16,
                                      color: Color.fromRGBO(255, 255, 255, 1))),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ]));
        });
  }

  void addTask(bool doEdit, [CardModel? modelObj]) {
    if (dateController.text.trim().isNotEmpty &&
        amountController.text.trim().isNotEmpty &&
        categoryController.text.trim().isNotEmpty &&
        descController.text.trim().isNotEmpty) {
      if (!doEdit) {
        setState(() {
          categoryList.add(CardModel(
              logo: categoryList[1].logo,
              date: dateController.text.trim(),
              amount: amountController.text.trim(),
              category: categoryController.text.trim(),
              description: descController.text.trim()));
        });
      } else {
        setState(() {
          if (modelObj != null) {
            modelObj.date = dateController.text.trim();
            modelObj.amount = amountController.text.trim();
            modelObj.category = categoryController.text.trim();
            modelObj.description = descController.text.trim();
          }
        });
      }
    }
    clearController();
  }

  void clearController() {
    dateController.clear();
    amountController.clear();
    categoryController.clear();
    descController.clear();
  }
}
