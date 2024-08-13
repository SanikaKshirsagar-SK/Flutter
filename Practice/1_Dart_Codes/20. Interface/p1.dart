//multiple inheritance achieved through interface

abstract class Developer {
  void develop() {
    print("software");
  }

  void devType();
}

abstract class Developer1 {
  void develop1() {
    print("d1-software applications");
  }
}

class WebD implements Developer, Developer1 {
  void develop1() {
    print("w1-software applications");
  }
  void develop() {
    print("w1-software");
  }
  void devType() {
    print("Web Developer");
  }
}

void main() {
  
  WebD obj1 = new WebD();
  obj1.develop();
  obj1.develop1();
  obj1.devType();

}
