class Test{
  final int x;
  final int y;
  // const constructor does not have body..
  // const Test(this.x, this.y){
  //   print("In Const Constructor...");
  // }
  const Test(this.x, this.y);
}

main(){
  Test obj = Test(10, 20);
  print(obj.x);
}

//o/p

// 10