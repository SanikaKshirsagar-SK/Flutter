import 'package:expense_manager_app/Model/expense_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'about.dart';
import 'graph.dart';
import 'transaction.dart';
import 'trash.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  TextEditingController imgURLController = TextEditingController();
  TextEditingController categoryController = TextEditingController();

  List<CategoryModel> category = [
    (CategoryModel(
      imgURL: "assets/food.svg",
      categoryName: "Food",
    )),
    (CategoryModel(
      imgURL: "assets/food.svg",
      categoryName: "Food",
    )),
    (CategoryModel(
      imgURL: "assets/shopping.svg",
      categoryName: "Shopping",
    )),
    (CategoryModel(
      imgURL: "assets/fuel.svg",
      categoryName: "Fuel",
    )),
    (CategoryModel(
      imgURL: "assets/entertainment.svg",
      categoryName: "Entertainment",
    )),
  ];
  // // List<Map<String, dynamic>> navigateTo = [
  //   {
  //     'logo': "assets/transaction.svg",
  //     'categoryName': "Transaction",
  //     'navigate': const Transaction(),
  //   },
  //   {
  //     'logo': "assets/graph.svg",
  //     'name': "Graphs",
  //     'navigate': const Transaction()
  //   },
  //   {
  //     'logo': "assets/category.svg",
  //     'name': "Category",
  //     'navigate': const Category()
  //   },
  //   {
  //     'logo': "assets/trash.svg",
  //     'name': "Trash",
  //     'navigate': const Transaction()
  //   },
  //   {
  //     'logo': "assets/about.svg",
  //     'name': "About",
  //     'navigate': const Transaction()
  //   },
  // ];
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

  void showBottomSheet(bool doEdit, [CategoryModel? modelObj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                "assets/img.svg",
                                height: 74,
                                width: 74,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Add",
                                style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    height: 19.5 / 13,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Image URL",
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              height: 19.5 / 13,
                              color: Color.fromRGBO(33, 33, 33, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          controller: imgURLController,
                          decoration: const InputDecoration(
                              hintText: "Enter URL",
                              hintStyle: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  height: 19.5 / 13,
                                  color: Color.fromRGBO(33, 33, 33, 1)),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromRGBO(191, 189, 189, 1)))),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Category",
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              height: 19.5 / 13,
                              color: Color.fromRGBO(33, 33, 33, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          controller: categoryController,
                          decoration: const InputDecoration(
                              hintText: "Enter category name",
                              hintStyle: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  height: 19.5 / 13,
                                  color: Color.fromRGBO(33, 33, 33, 1)),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromRGBO(191, 189, 189, 1)))),
                        ),
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 40,
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
                          doEdit ? addTask(doEdit, modelObj) : addTask(doEdit);
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "Add",
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              height: 16 / 24,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ));
        });
  }

  void addTask(bool doEdit, [CategoryModel? modelObj]) {
    if (imgURLController.text.trim().isNotEmpty &&
        categoryController.text.trim().isNotEmpty) {
      if (!doEdit) {
        setState(() {
          category.add(CategoryModel(
            imgURL: imgURLController.text.trim(),
            categoryName: categoryController.text.trim(),
          ));
        });
      } else {
        setState(() {
          modelObj?.imgURL = imgURLController.text.trim();
          modelObj?.categoryName = categoryController.text.trim();
        });
      }
    }
    clearController();
  }

  void clearController() {
    imgURLController.clear();
    categoryController.clear();
  }

  void removeTask(CategoryModel modalObj) {
    setState(() {
      category.remove(modalObj);
    });
  }

 
  Future<dynamic> showDialogMsg(CategoryModel modelObj) async {
    return showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: const Center(
                child: Text("Delete Category",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 24 / 16,
                        color: Color.fromRGBO(0, 0, 0, 1)))),
            content: const Text(
                "Are you sure you want to delete the selected category?",
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    height: 18 / 12,
                    color: Color.fromRGBO(0, 0, 0, 1))),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(14, 161, 125, 1)),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                        removeTask(modelObj);
                      },
                      child: const Text("Delete",
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 24 / 16,
                              color: Color.fromRGBO(255, 255, 255, 1)))),
                  const SizedBox(
                    width: 25,
                  ),
                  ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text("Cancel",
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 24 / 16,
                              color: Color.fromRGBO(0, 0, 0, 1)))),
                ],
              ),
            ],
          );
        }));
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
          "Categories",
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
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
          itemCount: category.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                    height: 150,
                    width: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(0, 3),
                            color: Color.fromRGBO(0, 0, 0, 0.15)),
                      ],
                    ),
                    child: GestureDetector(
                      onLongPress: () async {
                        await showDialogMsg(category[index]);
                      },
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => const Transaction())));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 74,
                            width: 74,
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: ClipOval(
                              child: SvgPicture.asset(
                                category[index].imgURL!,
                              ),
                            ),
                          ),
                          Text(
                            category[index].categoryName!,
                            style: const TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 24 / 16,
                                color: Color.fromRGBO(33, 33, 33, 1)),
                          )
                        ],
                      ),
                    )));
          }),
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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.add_circle_outline_outlined,
                color: Color.fromRGBO(14, 161, 125, 1),
                size: 25,
              ),
              Text(
                "Add Category",
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
}
