//Single level inheritance
class Parent {
  int x = 10;
  Parent() {
    print("Parent Constructor");
  }
}

class Child extends Parent {
  int y = 20;
  Child() {
    print("Child Constructor");
  }
}

void main() {
  Child obj = new Child();
  print(obj.x);
  print(obj.y);
}
