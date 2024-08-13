import 'p9.dart';

void main() {
  Demo obj1 = new Demo(10, "sanika");
  print(obj1.getX);
  print(obj1.getStr);
  obj1.printData();
  obj1.setX = 333;
  obj1.setStr = "abcd";
  obj1.printData();
}

