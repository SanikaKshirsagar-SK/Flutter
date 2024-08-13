//Static Method

class Demo {
  int x = 10;
  static int y = 20;
  static void printData() {
    //print(x);               //Error - cannot acces not static variables
    print(y);                
  }
}

void main() {
  Demo.printData();
}
