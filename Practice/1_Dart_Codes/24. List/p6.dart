//Lst Methods

// Remove element

void main() {
  var lang = ["CPP", "Java", "Python", "Java"];

  print(lang); //[CPP, Java, Python, Java]

  lang.remove("Python");

  print(lang); //[CPP, Java, Java]

  lang.removeAt(1); 

  print(lang);    //[CPP, Java].
}
