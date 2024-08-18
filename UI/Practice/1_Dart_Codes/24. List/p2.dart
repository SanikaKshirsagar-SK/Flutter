//List Constructor -
//      empty()
//      filled()
//      from()

void main() {
  List lang1 = List.empty();
  // lang1.add("CPP");    //Error - Cannot add to a fixed-length list
  print(lang1); // []

  List lang2 = List.empty(growable: true);
  //lang2[0] = "CPP";     //Error - Invalid value: Valid value range is empty: 0
  lang2.add("CPP");
  lang2.add("Java");
  lang2.add("Python");
  lang2.add("Dart");
  print(lang2); //[CPP, Java, Python, Dart]
  lang2[0] = "Javascript";
  print(lang2); //[Javascript, Java, Python, Dart]

  List lang3 = List.filled(5, 1);
  print(lang3); //[1, 1, 1, 1, 1]
  //lang3.add(24);
  //print(lang3);   //Error - Cannot add to a fixed-length list

  List lang4 = List.filled(5, 22, growable: true);
  print(lang4); //[22, 22, 22, 22, 22]
  lang4.add(27);
  print(lang4); //[22, 22, 22, 22, 22, 27]

  List lang5 = List.unmodifiable([10, 20, 30]);
  print(lang5); //[10, 20, 30]
  //lang5[0] = 50;   //Cannot modify an unmodifiable list

  List lang6 = [100, 200, 300, 400];
  List lang7 = List.unmodifiable(lang6);
  print(lang6); //[100, 200, 300, 400]
  print(lang7); //[100, 200, 300, 400]
  lang6[0] = 111;
  lang6[1] = 222;
  print(lang6);   //[111, 222, 300, 400]
  print(lang7);   //[100, 200, 300, 400]
}
