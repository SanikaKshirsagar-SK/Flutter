abstract class Developer {
  void develop() {
    print("software");
  }

  void devType();
}

class WebD extends Developer {
  void devType() {
    print("Web Developer");
  }
}

class AppD extends Developer {
  void devType() {
    print("Flutter Developer");
  }
}

void main() {
  
  Developer obj1 = new WebD();
  obj1.develop();
  obj1.devType();

  Developer obj2 = new AppD();
  obj2.develop();
  obj2.devType();
}
