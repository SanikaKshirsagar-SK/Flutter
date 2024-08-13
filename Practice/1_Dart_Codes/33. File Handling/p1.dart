//create file

import 'dart:io';

void main() async{
  File f = new File("c2w.txt");
  print(f);
  print(f.runtimeType);

  //synchronously file is created
  //f.createSync(); 

  //asynchronously file is created
  f.create(); 
  //print(f.create());  //Instance of 'Future<File>'

  //await f.create();   //using await

}
