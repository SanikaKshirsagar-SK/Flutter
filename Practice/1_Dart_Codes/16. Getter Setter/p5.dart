class Demo {
  int? _x;
  String? str;

  Demo(this._x, this.str);

  int? get getX {
    return _x;
  }

  String? get getStr {
    return str;
  }

  set setX(int x) {
    _x = x;
  }

  set setStr(String name) {
    str = name;
  }

  void printData() {
    print(_x);
    print(str);
  }
}
