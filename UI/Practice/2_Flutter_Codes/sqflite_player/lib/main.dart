import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
dynamic database;

class Player {
  final String name;
  final int jerNo;
  final int runs;
  final double avg;

  Player({
    required this.name,
    required this.jerNo,
    required this.runs,
    required this.avg,
  });

  Map<String, dynamic> playerMap() {
    return {'name': name, 'jerNo': jerNo, 'runs': runs, 'avg': avg};
  }

  @override
  String toString() {
    return '{name: $name, jerNo: $jerNo, runs: $runs, avg: $avg}';
  }
}

Future insertPlayerData(Player obj) async {
  final localDB = await database;
  localDB.insert(
    "Player",
    obj.playerMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Player>> getPlayerData() async {
  final localDB = await database;
  List<Map<String, dynamic>> listPlayers = await localDB.query("Player");
  return List.generate(listPlayers.length, (index) {
    return Player(
        name: listPlayers[index]['name'],
        jerNo: listPlayers[index]['jerNo'],
        runs: listPlayers[index]['runs'],
        avg: listPlayers[index]['avg']);
  });
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), "PlayersDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE Player(
                    name TEXT,
                    jerNo INTEGER PRIMARY KEY,
                    runs INT,
                    avg REAL)''');
    },
  );
  
  Player batsman1 =
      Player(name: "Virat Kohli", jerNo: 18, runs: 60000, avg: 80.88);
  await insertPlayerData(batsman1);

  Player batsman2 =
      Player(name: "Rohit Sharma", jerNo: 12, runs: 70000, avg: 90.88);
  await insertPlayerData(batsman2);

  Player batsman3 =
      Player(name: "MS Dhoni", jerNo: 15, runs: 55000, avg: 85.88);
  await insertPlayerData(batsman3);

  print(await getPlayerData());
}
