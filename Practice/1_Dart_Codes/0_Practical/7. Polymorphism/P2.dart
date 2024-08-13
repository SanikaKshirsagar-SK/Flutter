
class Demo1{
  double x = 10.8;

  num fun(){
    return x;
  }
}

class Demo2 extends Demo1 {
  int y = 9;
  int fun(){
    var x = super.fun();
    print(x.runtimeType);
    x = 10;
    print(x.runtimeType);
    return 10;
  }
}

main(){
  Demo2 obj = Demo2();
  print(obj.fun());
}

//o/p

// double
// int
// 10 