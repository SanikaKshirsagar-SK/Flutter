class Demo {
  Demo._private() {
    print("Constructor");
  }
  factory Demo() {
    print("Factory Constructor");
    return Demo._private();
  }
  void fun(){
    print("In fun");
  }
}
