abstract class Developer {
  factory Developer(String devType) {
    if (devType == "Backend")
      return Backend();
    else if (devType == "Frontend")
      return Frontend();
    else if (devType == "Mobile")
      return Mobile();
    else
      return Other();
  }

  void devLang();
}

class Backend implements Developer {
  void devLang() {
    print("NodeJs/SpringBoot");
  }
}

class Frontend implements Developer {
  void devLang() {
    print("AngularJs/ReactJS");
  }
}

class Mobile implements Developer {
  void devLang() {
    print("Flutter/Android/Kotlin");
  }
}

class Other implements Developer {
  void devLang() {
    print("Testing/DevOps");
  }
}

void main() {
  Developer obj1 = new Developer("Backend");
  obj1.devLang();

  Developer obj2 = new Developer("Frontend");
  obj2.devLang();

  Developer obj3 = new Developer("Mobile");
  obj3.devLang();

  Developer obj4 = new Developer("Other");
  obj4.devLang();
}