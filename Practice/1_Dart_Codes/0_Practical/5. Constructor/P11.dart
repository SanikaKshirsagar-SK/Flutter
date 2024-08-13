class Test{
  Test._private(){
    print("In Test._private");
  }
  
  factory Test(){
    print("In Test Factory");
    return Test._private();
  }
}
main(){
  // Test obj = Test();
  Test(); 
}