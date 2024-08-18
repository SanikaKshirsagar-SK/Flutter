void Outer(){
  void Inner(){
    print("Inner");
  } 
  Inner(); 
}

void main(){
  Outer();
}

//o/p

// Inner