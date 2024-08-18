abstract class Developer {
  void develop() {
    print("software");
  }
  void devType();
}

abstract class Developer1 {
  void develop1() {
    print("software applications");
  }
}

class AppD extends Developer1 {
  void devType() {
    print("Flutter Developer");
  }
}

class WebD implements Developer {
  void develop() {
    print("w1-software");
  }

  void devType() {
    print("Web Developer");
  }
}

void main() {
  Developer obj1 = new WebD();
  obj1.develop();
  obj1.devType();

  AppD obj2 = new AppD();
  obj2.develop1();
  obj2.devType();
}
