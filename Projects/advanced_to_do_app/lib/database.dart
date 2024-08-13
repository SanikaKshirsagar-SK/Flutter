// import 'dart:developer';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;
import 'to_do_model.dart';

dynamic database;
Future<dynamic> createDB() async {
  return openDatabase(path.join(await getDatabasesPath(), "UserDB.db"), version: 1,
      onCreate: (db, version) {
    db.execute('''
            CREATE TABLE UserData(
              Id INTEGER PRIMARY KEY ,
              name TEXT,
              username TEXT,
              password TEXT
            )''');
    // log("User Data Table created");
    db.execute('''
            CREATE TABLE Tasks(
              taskId INTEGER PRIMARY KEY AUTOINCREMENT,
              title TEXT,
              description TEXT,
              date TEXT,
              isChecked INTEGER
            )''');
    // log("Task Data Table created");

  });
}

Future<void> insertUserData(UserInfo obj) async {
  final localDB = await database;
  localDB.insert(
    "UserData",
    obj.userMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
  // log("User Data Inserted");
}

Future<List<UserInfo>> fetchUserData() async {
  final localDB = await database;

  List<Map<String, dynamic>> userData = await localDB.query("UserData");

  return List.generate(userData.length, (idx) {
    return UserInfo(
      id: userData[idx]['id'],
      name: userData[idx]['name'],
      username: userData[idx]['username'], 
      password: userData[idx]['password'],
    );
  });
}
