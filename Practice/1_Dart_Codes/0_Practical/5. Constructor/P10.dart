class Demo{
//   Demo(){
//     print("In Demo Constructor");
//   }
//   factory Demo(){
//     print("In Factory Demo Constructor");
//     return Demo();
//   }

  //Error: 'Demo' is already declared in this scope.
}

main(){
  Demo obj = Demo();
  print(obj.hashCode);
}