import 'dart:io';

void main() async {
  File f1 = new File("c2w.txt");
  f1.create();

  //1. Copy from one file to another
  File f2 = new File("xyz.txt");
  f1.copySync(f2.path);
  //or
  // f1.copySync("pqr.txt");

  //await f1.copy("xyz.txt");
  
  // Future<File> str2 = f1.copy("xyz.txt");
  // str2.then((value) => print(value)); //File: 'xyz.txt'
  
  
  
  //2. rename a file
  //f1.renameSync("xyz.txt");

  // await f1.rename("xyz.txt");
  
  // Future<File> str2 = f1.rename("abc.txt");
  // str2.then((value) => print(value)); //File: 'xyz.txt'
  


  //3. select specific data
  // String str = f2.readAsStringSync().substring(0, 8);
  // print(str); //Core2Web
}
