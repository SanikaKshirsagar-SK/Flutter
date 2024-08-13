import 'dart:io';

void main() {
  int? empId;
  String? empName;
  String? desig;

  //sync

  // empId = int.parse(stdin.readLineSync()!);
  // empName = stdin.readLineSync();
  // desig = stdin.readLineSync();

  // File f = new File("EmpInfo.txt");
  // f.writeAsStringSync(" $empId $empName $desig");

  //async

  empId = int.parse(stdin.readLineSync()!);
  empName = stdin.readLineSync();
  desig = stdin.readLineSync();

  File f = new File("./EmpInfo.txt");
  f.writeAsString(" $empId $empName $desig ", mode: FileMode.append);
}
