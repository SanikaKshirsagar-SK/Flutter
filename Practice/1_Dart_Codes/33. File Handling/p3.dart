//Reading from file

import 'dart:io';

void main() async {
  File f = new File("c2w.txt");
  print(f); //File: 'c2w.txt'

  //sync
  String str = f.readAsStringSync();
  print(str);

  // // async1
  // String str1 = await f.readAsString();
  // print(str1);

  // //async 2
  // Future<String> str2 = f.readAsString();
  // str2.then((value) => print(value));
}
