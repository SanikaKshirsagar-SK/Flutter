import 'p5.dart';

void main() {
  Demo obj1 = new Demo(10, "abc");
  print(obj1.getX);
  print(obj1.str);
  obj1.printData();
  obj1.setX = 333;
  obj1.setStr = "abcd";
  obj1.printData();
}
