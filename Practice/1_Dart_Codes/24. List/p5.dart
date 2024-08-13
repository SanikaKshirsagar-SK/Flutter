//List Methods

//add element

void main() {
  var lang = List.empty(growable: true);
  lang.add("Java");
  lang.add("Dart");
  print(lang); //[Java, Dart]

  var lang1 = ["Java", "Python"];
  lang.addAll(lang1);
  print(lang); //[Java, Dart, Java, Python]

  lang.insert(2, "Javascript");
  print(lang); //[Java, Dart, Javascript, Java, Python]

  lang.insert(3, ["Go", "Swift"]);
  print(lang); //[Java, Dart, Javascript, [Go, Swift], Java, Python]

  lang.replaceRange(2, 5, ["Kotlin", "Ruby"]);
  print(lang);   //[Java, Dart, Kotlin, Ruby, Python]
  
}
