import 'dart:io';

void main() {
  print(stdin.runtimeType);
  String? name = stdin.readLineSync();
  print("Name = $name");

  int? age = int.parse(stdin.readLineSync()!);
  print("Age = $age");
}
