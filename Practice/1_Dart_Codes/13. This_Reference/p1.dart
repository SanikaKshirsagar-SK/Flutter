

class Demo {
  int? x;
  int? y;

  Demo(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void printInfo() {
    print(x);
    print(y);
  }
}

void main() {
  Demo obj1 = new Demo(10,20);
  obj1.printInfo();
}
