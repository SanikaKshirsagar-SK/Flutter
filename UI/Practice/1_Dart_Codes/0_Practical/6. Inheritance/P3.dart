class Test{
  int x = 300;
  int y = 400;
}

class Test2 extends Test{
  int x;
  
  Test2(this.x);

  void gun(){
    this.x = 100;
    this.y = 200;
  }

  void fun(){
    print(this.x);  //100
    print(super.x); //300
    print(super.y); //200
  }
}

void main() {
  Test2 obj = new Test2(500);
  obj.gun();  
  obj.fun();  
}

//o/p

//100
//300
//200