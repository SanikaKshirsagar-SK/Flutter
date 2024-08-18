//Properties of file

import 'dart:io';

void main() async {
  File f = new File("c2w.txt");
  print(f); //File: 'c2w.txt'
  print(f.runtimeType); //_File
  print(f.absolute); //File: 'C:\src\33. File Handling\c2w.txt'
  print(f.path); //c2w.txt
  // print(f.lastAccessedSync()); //2023-12-27 22:03:32.000
  // print(f.lastAccessed()); //Instance of 'Future<DateTime>'
  // print(f.lastModifiedSync()); //2023-12-27 22:03:32.000
  // print(f.lastModified()); //Instance of 'Future<DateTime>'
  // print(f.lengthSync()); //0
  // print(f.length()); //Instance of 'Future<int>'
  // print(f.existsSync()); //true
  // print(f.exists()); //Instance of 'Future<bool>'

  //async1
  final val = await f.lastAccessed(); 
                // or
  // DateTime val = await f.lastAccessed(); 
  print(val); //2023-12-27 22:03:32.000

  //async2
  Future<DateTime> data = f.lastAccessed();
  data.then((value)=>print(value));   //2023-12-27 22:03:32.000
}
