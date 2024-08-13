class Point{
  // int x;
  // int y;
  // Error: Field 'x' should be initialized because its type 'int' doesn't allow null.
  
  int? x;
  int? y;
}

main(){
  Point obj = Point();  
  print(obj.hashCode);
}