class Backend {
  String? lang;
  Backend._code(String lang) {
    if (lang == "JavaScript") {
      this.lang = "NodeJS";
    } else if (lang == "Java") {
      this.lang = "SpringBoot";
    } else {
      this.lang = "NodeJS/SpringBoot";
    }
  }

  factory Backend(String lang) {
    return Backend._code(lang);
  }
}

void main() {
  Backend obj1 = new Backend("JavaScript");
  Backend obj2 = new Backend("Java");
  Backend obj3 = new Backend("Python");

  print(obj1.lang);
  print(obj2.lang);
  print(obj3.lang);
}

// o/p
// NodeJS
// SpringBoot
// NodeJS/SpringBoot

// class Developer {
//   String? str;
//   Developer._code(String? str) {
//     if (str == "Frontend") {
//       this.str = "Flutter";
//     } else if (str == "Backend") {
//       this.str = "NodeJS";
//     }
//     else if (str == "Web") {
//       this.str = "HTML";
//     } else {
//       this.str = "Java";
//     }
//   }

//   factory Developer(String str) {
//     return Developer._code(str);
//   }
// }

// void main() {
//   Developer obj1 = new Developer("Frontend");
//   print(obj1.str);
//   Developer obj2 = new Developer("Backend");
//   print(obj2.str);
//   Developer obj3 = new Developer("Web");
//   print(obj3.str);
//   Developer obj4 = new Developer("CPP");
//   print(obj4.str);
// }
