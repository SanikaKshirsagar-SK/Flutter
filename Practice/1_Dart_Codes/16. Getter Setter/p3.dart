//getter method

//way1

class Demo {
  int? _x;
  String? str;

  Demo(this._x, this.str);

  int? getX() {
    return _x;
  }

  String? getStr() {
    return str;
  }

  void setX(int x) {
    _x = x;
  }

  void setStr(String name) {
    str = name;
  }

  void printData() {
    print(_x);
    print(str);
  }
}
