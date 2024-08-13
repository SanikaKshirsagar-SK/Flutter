class Demo{
  final int x;
  final String str;

  const Demo(this.x, this.str);

  void fun(){
    print("X = $x");
    print("String = $str");
  }
}

main(){
  Demo obj1 = const Demo(10, "Kanha");
  Demo obj2 = const Demo(10, "Kanha");
  Demo obj3 = const Demo(111, "Sanika");
  print(obj1.hashCode);
  print(obj2.hashCode);
  print(obj3.hashCode);
}

//o/p

// 1006148009
// 1006148009
// 37894947