class Demo {
  int? _x;
  String? str;

  Demo(this._x, this.str);

  get getX => _x;
  get getStr => str;

  set setX(int x) => _x = x;
  set setStr(String name) => str = name;
  
  void printData() {
    print(_x);
    print(str);
  }
}
