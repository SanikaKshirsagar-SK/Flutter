import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'to_do_model.dart';
import 'database.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
// import 'dart:developer';

List<ToDoModelClass> cardList = [];

Future<void> insertTaskData(ToDoModelClass obj) async {
  final localDB = await database;
  await localDB.insert(
    "Tasks",
    obj.taskMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<ToDoModelClass>> getTaskData() async {
  final localDB = await database;
  List<Map<String, dynamic>> taskData = await localDB.query("Tasks");
  // log("Get Data Fun - $taskData");
  return List.generate(taskData.length, (idx) {
    return ToDoModelClass(
      taskId: taskData[idx]['taskId'],
      title: taskData[idx]['title'],
      description: taskData[idx]['description'],
      date: taskData[idx]['date'],
    );
  });
}

Future<void> updateTaskData(ToDoModelClass obj) async {
  final localDB = await database;
  await localDB.update(
    "Tasks",
    obj.taskMap(),
    where: "taskId = ?",
    whereArgs: [obj.taskId],
  );
}

Future<void> deleteTaskData(int? taskId) async {
  final localDB = await database;
  // log("Delete fun - $cardList");
  await localDB.delete(
    "Tasks",
    where: "taskId = ?",
    whereArgs: [taskId],
  );
}

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});
  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void clearController() {
    titleController.clear();
    descController.clear();
    dateController.clear();
  }

  @override
  void initState() {
    super.initState();
    fetchTask();
  }

  Future<void> fetchTask() async {
    cardList = await getTaskData();
    setState(() {});
  }

  var colorsList = [
    const Color.fromRGBO(76, 71, 105, 0.2),
    const Color.fromRGBO(59, 51, 85, 0.4),
    const Color.fromRGBO(41, 36, 59, 0.6),
    const Color.fromRGBO(37, 33, 54, 0.8)
  ];

  void showBottomSheet(bool doEdit, [ToDoModelClass? modelObj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(30)),
        ),
        context: context,
        isDismissible: true,
        builder: (context) {
          return Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Create Task",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w900, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Title",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                              color: const Color.fromRGBO(34, 30, 49, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          controller: titleController,
                          decoration: InputDecoration(
                            hintText: "Enter Title..",
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 15, 1, 15),
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Description",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                              color: const Color.fromRGBO(34, 30, 49, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          controller: descController,
                          maxLines: 3,
                          decoration: InputDecoration(
                            hintText: "Enter Description..",
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 1, 1, 15),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Date",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                              color: const Color.fromRGBO(34, 30, 49, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          controller: dateController,
                          readOnly: true,
                          decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 15, 1, 15),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 15, 1, 15),
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 15, 1, 15),
                                ),
                              ),
                              suffixIcon: const Icon(
                                Icons.calendar_month_rounded,
                              )),
                          onTap: () async {
                            //pick date from datepicker
                            DateTime? pickDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2023),
                                lastDate: DateTime(2025));
                            //format date into required format of date i.e. Y M D
                            String dateFormat =
                                DateFormat.yMMMd().format(pickDate!);
                            setState(() {
                              dateController.text = dateFormat;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 40,
                      width: 250,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: const Color.fromARGB(255, 15, 1, 15),
                        ),
                        onPressed: () {
                          doEdit
                              ? submitButton(doEdit, modelObj)
                              : submitButton(doEdit);
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Submit",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ));
        });
  }

  void submitButton(bool doEdit, [ToDoModelClass? modelObj]) async {
    if (titleController.text.trim().isNotEmpty &&
        descController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      final newTask = ToDoModelClass(
          taskId: doEdit ? modelObj!.taskId : cardList.length + 1,
          title: titleController.text.trim(),
          description: descController.text.trim(),
          date: dateController.text.trim());
      if (!doEdit) {
        setState(() {
          cardList.add(newTask);
          insertTaskData(newTask);
        });
      } else {
        setState(() async {
          final index = cardList.indexOf(modelObj!);
          cardList[index] = newTask;
        });
      }
    }
    clearController();
  }

  void removeTask(ToDoModelClass modalObj) async {
    setState(() {
      cardList.remove(modalObj);
      deleteTaskData(modalObj.taskId);
    });
  }

  void editTask(ToDoModelClass modelObj) {
    titleController.text = modelObj.title;
    descController.text = modelObj.description;
    dateController.text = modelObj.date;
    updateTaskData(modelObj);
    showBottomSheet(true, modelObj);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromARGB(255, 15, 1, 15),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 50, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Hello..",
                  style: GoogleFonts.quicksand(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  "Sanika",
                  style: GoogleFonts.quicksand(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Flexible(
            child: Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "DASHBOARD",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: ListView.builder(
                          padding: const EdgeInsets.all(20),
                          scrollDirection: Axis.vertical,
                          itemCount: cardList.length,
                          itemBuilder: (context, index) {
                            return Slidable(
                              closeOnScroll: true,
                                  key: UniqueKey(),

                              endActionPane: ActionPane(
                                  extentRatio: 0.2,
                                  motion: const DrawerMotion(),
                                  children: [
                                    Expanded(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const SizedBox(height: 5),
                                        GestureDetector(
                                          child: const Icon(
                                            color: Colors.black,
                                            size: 30,
                                            Icons.edit_note_rounded,
                                          ),
                                          onTap: () {
                                            editTask(cardList[index]);
                                            // Slidable.of(context)?.close();
                                          },
                                        ),
                                        const SizedBox(width: 10),
                                        GestureDetector(
                                          child: const Icon(
                                              color: Colors.black,
                                              size: 30,
                                              Icons.delete_outline_outlined),
                                          onTap: () {
                                            removeTask(cardList[index]);
                                            // Slidable.of(context)?.close();
                                          },
                                        ),
                                      ],
                                    ))
                                  ]),
                              direction: Axis.horizontal,
                              child: Container(
                                  margin: const EdgeInsets.only(top: 15),
                                  padding: const EdgeInsets.only(
                                      left: 20, bottom: 20, top: 10),
                                  decoration: BoxDecoration(
                                      color:
                                          colorsList[index % colorsList.length],
                                      boxShadow: const [
                                        BoxShadow(
                                            offset: Offset(0, 10),
                                            color: Color.fromRGBO(
                                                119, 81, 68, 0.5),
                                            blurRadius: 5),
                                      ],
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.5))),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(15),
                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    "assets/logo.jpg",
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 20),
                                          Flexible(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  cardList[index].title,
                                                  style:
                                                      GoogleFonts.quicksand(
                                                    fontWeight:
                                                        FontWeight.w900,
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  cardList[index].description,
                                                  style:
                                                      GoogleFonts.quicksand(
                                                    fontWeight:
                                                        FontWeight.w400,
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  cardList[index].date,
                                                  style:
                                                      GoogleFonts.quicksand(
                                                    fontWeight:
                                                        FontWeight.w400,
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 40),
                                            child: Checkbox(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30),
                                                ),
                                                activeColor: Colors.green,
                                                value:
                                                    cardList[index].isChecked,
                                                onChanged: (val) {
                                                  setState(() {
                                                    cardList[index]
                                                            .isChecked =
                                                        val != null && val;
                                                  });
                                                }),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clearController();
          showBottomSheet(false);
        },
        shape: const CircleBorder(),
        backgroundColor: const Color.fromARGB(255, 15, 1, 15),
        child: const Icon(
          size: 50,
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
