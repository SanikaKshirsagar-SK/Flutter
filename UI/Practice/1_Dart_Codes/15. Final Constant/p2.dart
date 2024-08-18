// final keyword
import 'dart:io';

void main() {
  final int x = 10;
  print(x);

  final int y;    //final can be assigned later but once assigned cannot be changed
  y = 10;
  print(y);
  
  final int z;    //final can be runtime
  z = int.parse(stdin.readLineSync()!);
  print(z);
}
