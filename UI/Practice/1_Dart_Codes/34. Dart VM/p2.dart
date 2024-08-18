Function Outer(){
  void Inner(){
    print("Inner");
  } 
  return Inner; 
}

void main(){
  Function ret = Outer();
  ret();
  print(ret.runtimeType);
  print(Outer.runtimeType);
}

//o/p

// Inner
// () => void    
// () => Function
