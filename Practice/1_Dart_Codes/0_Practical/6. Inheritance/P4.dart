class Test {
  int x;
  int? y;
  Test({required this.x, this.y});

}

class Test2 extends Test{
  
  Test2(int x, int y) : super(x: 88);
  
  void fun(){
    print(this.x);
    print(super.x);
    
  }
}

void main(){
  Test2 obj = Test2(19, 20);
  obj.fun();
}

//o/p

// 88
// 88