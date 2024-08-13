
abstract class Demo{
  factory Demo(){
    print("In factory Demo"); 
    return Demo1();
  }
}

class Demo1 implements Demo{
  Demo1(){
    print("In Demo1"); 
  }
}

main(){
  Demo obj = Demo();
  print(obj.hashCode);
}

//o/p

// In factory Demo
// In Demo1
// 177626396