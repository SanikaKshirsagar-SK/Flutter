class Demo {
  int? _x;
  String? str;

  Demo(this._x, this.str);

  int? get getX => _x;
  String? get getStr => str;

  void set setX(int x) => _x = x;
  void set setStr(String name) => str = name;

  void printData() {
    print(_x);
    print(str);
  }
}
