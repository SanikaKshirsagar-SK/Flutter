void main() {
  var add = (int a, int b) {
    print(a + b);
  }(10, 20);

  print(add.runtimeType);
}
