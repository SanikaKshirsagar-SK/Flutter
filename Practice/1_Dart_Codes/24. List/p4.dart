// List Methods

void main() {
  var lang = ["CPP", "Java", "Python", "Java"];

  print(lang); //[CPP, Java, Python, Java]

  lang.add("Dart");
  print(lang); //[CPP, Java, Python, Java, Dart]

  print(lang[2]);   //Python

  print(lang.elementAt(3));   //Java

  print(lang.getRange(0, 2));   //(CPP, Java)

  print(lang.indexOf("Python"));   //2

  print(lang.lastIndexOf("Java"));  //3

  print(lang.indexWhere((element) => element.startsWith("P"))); //2
  
}
