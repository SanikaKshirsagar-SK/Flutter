
// overrding

class Parent {
  void carrer() {
    print("Engineering");
  }

  void marry() {
    print("Kartik");
  }
}

class Child extends Parent {
  void marry() {
    print("Ranbir");
  }
  void profession() {
    print("s/w Engg");
  }
}

void main() {
  Parent obj1 = new Parent();
  obj1.carrer();
  obj1.marry();
  //obj1.profession();

  Child obj2 = new Child();
  obj2.carrer();
  obj2.marry();
  obj2.profession();

  Parent obj3 = new Child();
  obj3.carrer();
  obj3.marry();
  //obj3.profession();
}
