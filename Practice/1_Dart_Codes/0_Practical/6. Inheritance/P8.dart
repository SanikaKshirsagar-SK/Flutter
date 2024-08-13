
class Parent{
  Parent(){
    print("In parent");
  }
  // call(){

  // }
}

class Child extends Parent{
  
  Child(){
    // super();  // Error: Superclass has no method named 'call'.
    print("In Child");
  }
}

main(){
  Child obj = Child();
  print(obj.hashCode);
}

//o/p

// In parent
// In Child
// 198497886