class Test {
  int x=30;
}

class Test2 extends Test{
  int x;

  Test2(this.x);

  void gun(){
    this.x=8;
  }

  void fun(){
    print(this.x);  // 8
    print(super.x); //30
  }
} 

void main(){
  Test2 obj=Test2(10);
  obj.gun();
  obj.fun();
}

//o/p

//100
//300
//200