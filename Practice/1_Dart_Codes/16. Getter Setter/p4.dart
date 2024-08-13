import 'p3.dart';

void main() {
  Demo obj1 = new Demo(10, "abc");
  print(obj1.getX());
  print(obj1.str);
  obj1.printData();
  obj1.setX(222);
  obj1.setStr("sanika");
  obj1.printData();
}
