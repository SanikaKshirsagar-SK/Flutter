//Create Directory

import 'dart:io';

void main() {
  Directory dir = new Directory("Dart");
  print(dir.absolute);
  print(dir.hashCode);
  //dir.delete(recursive: true);
}
