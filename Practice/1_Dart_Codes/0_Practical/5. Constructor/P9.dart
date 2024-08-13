int a = 10;
class Demo{
  int x = 20;
  int y = 30;
  static num z = 40;

  // Demo(this.x, this.y,this.a);
  // Error: 'a' isn't an instance field of this class.
  
  Demo(this.x, this.y);

  void fun(){
    print(x); //100
    print(y); //200
    print(a); //10
  }
}

main(){
  Demo obj = Demo(100,200);
  obj.fun();
  print(Demo.z);  //40
  print(a); //10
}

//o/p

// 100
// 200
// 10
// 40
// 10