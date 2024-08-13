
import 'dart:developer';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
// import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import '../Models/teacher_model.dart';

//Database Class
class DatabaseHelper {
  //Database Name
  static const String dbName = 'School.db';

  //Table Names
  static const String teachersTable = 'Teachers';

  static Database? _database;

  // Check database
  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  // Database Initialization
  initDB() async {
    String path = join(await getDatabasesPath(), dbName);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  //Database and Table Creation
  _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $teachersTable (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        education TEXT,
        subjects TEXT,
        mobileNo TEXT,
        email TEXT,
        username TEXT,
        password TEXT
      )
    ''');
      log('Teacher Table created successfully');

  }

  //Inserting a Teacher's Data in Database
  Future<int> insertTeacher(TeacherModel teacher) async {
    final db = await database;
    if (db == null) {
      throw Exception('Database is not initialized');
    }
      log('Teacher Data inserted successfully');
    return await db.insert(teachersTable, teacher.toMap(id: null)) ;
  }

  //Retrieving Teacher Data from Database
  Future<TeacherModel?> getTeacher(String username, String password) async {
    final db = await database;
    if (db == null) {
      throw Exception('Database is not initialized');
    }
    final result = await db.query(teachersTable,
        where: 'username = ? AND password = ?',
        whereArgs: [username, password]);
    if (result.isNotEmpty) {
      return TeacherModel.fromMap(result.first);
    } else {
      return null;
    }
  }
}
