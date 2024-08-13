class Test{
  int? x;
  
  Test(this.x){
    print("In test");
    print(x);
  }
}

class Test2 extends Test{
  int? y;
  
  Test2(this.y,int x):super(x){
    print("In test2");
    print(x);
    print(y);
  }
}

class Test3 extends Test2{
  int? z;
  
  Test3(this.z, int y, int x):super(y,x){
    print("In test3");
    print(x);
    print(y);
    print(z);
  }
}

main(){
  Test3 obj = Test3(300, 200, 100);
  print(obj.hashCode);
}

//o/p

// In test
// 100
// In test2
// 100
// 200
// In test3
// 100
// 200
// 300
// 15846511