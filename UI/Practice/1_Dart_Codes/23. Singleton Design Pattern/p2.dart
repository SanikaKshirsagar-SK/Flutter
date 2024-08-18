class Demo {
  static Demo obj = new Demo._private();
  Demo._private() {
    print("In Constructor");
  }
  factory Demo() {
    return obj;
  }
}

void main() {
  Demo obj1 = new Demo();
  print(obj1.hashCode);

  Demo obj2 = new Demo();
  print(obj2.hashCode);

  Demo obj3 = new Demo();
  print(obj3.hashCode);
}
