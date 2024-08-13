class Demo {
  static Demo obj = new Demo._private();
  Demo._private() {
    print("In Constructor");
  }
  static Demo getInstance() {
    return obj;
  }
}

void main() {
  Demo obj1 = Demo.getInstance();
  print(obj1.hashCode);

  Demo obj2 = Demo.getInstance();
  print(obj2.hashCode);

  Demo obj3 = Demo.getInstance();
  print(obj3.hashCode);
}
