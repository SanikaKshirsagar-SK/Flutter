//Default / No Argument Constructor

class Demo {
  int x = 50;
  Demo() {
    //  Demo(Demo this){   }
    print("In Constructor");
  }
}

void main() {
  Demo obj1 = new Demo(); //Demo(this)     this is hidden parameter
  print(obj1.x);
  Demo obj2 = new Demo();
  print(obj2.x);
}
