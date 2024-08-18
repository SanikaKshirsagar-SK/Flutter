
class Demo{
  int x;
  
  Demo(this.x);
}

class Demo1 extends Demo{
  
  Demo1(super.x);

  void fun(){
    print(x);
  }
}

main(){
  Demo1 obj = Demo1(10);  
  obj.fun();
}