//Instance Method with Static Variables

class Demo {
  int x = 10;
  static int y = 20;
  void printData() {
    print(x);
    print(y);       //No error 
  }
}

void main() {
  Demo obj = new Demo();
  obj.printData();
  print(obj.x);
  //print(obj.y);           //error
}
