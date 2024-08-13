//Writing into a file

import 'dart:io';

void main() async {
  File f = new File("c2w.txt");

  //sync
  f.writeAsStringSync(" Welcome to C2W " , mode: FileMode.append);
  

  // // async1
  //  await f.writeAsString(" Welcome to C2W " , mode: FileMode.append);
  

  // //async 2
//   Future<File> str2 = f.writeAsString(" Welcome to C2W " , mode: FileMode.append);
//   str2.then((value) => print(value));
}
