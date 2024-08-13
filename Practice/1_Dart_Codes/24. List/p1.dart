// List - Duplicate allowed 
//        Collec. of different type of data
//        Indexing
//        Mutable

void main() {
  List player = ["Virat", "Rohit", "KLRahul"];
  print(player); // [Virat, Rohit, KLRahul]
  print(player.runtimeType); //List<dynamic>

  var lang = ["CPP", "Java", "Dart"];
  print(lang); //[CPP, Java, Dart]
  print(lang.runtimeType); //List<String>

  var l1 = [101, "sanika", "99"];
  print(l1); //[101, sanika, 99]
  print(l1.runtimeType); //List<Object>

  List<String> progLang = List.empty(growable: true);
  progLang.add("Javascript");
  progLang.add("Ruby");
  progLang.add("R");
  print(progLang);    //[Javascript, Ruby, R]
  print(progLang.runtimeType);    //List<String>
  
}
