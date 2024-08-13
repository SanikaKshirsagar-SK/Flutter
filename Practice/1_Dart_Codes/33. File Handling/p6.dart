//Delete a file

import 'dart:io';

void main() async {
  File f = new File("c2w.txt");
  f.createSync();

  //async
  // f.delete();
  
  if (f.existsSync()) {
    f.delete();
  } else {
    print("No such file");
  }


  //sync
  // f.deleteSync();
}
