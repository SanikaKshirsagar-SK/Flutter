

class Player{
  // int? jerNo;
  // String? pName;
  // Error: Constructor is marked 'const' so all fields must be final.
  // Context: Field isn't final, but constructor is 'const'.

  final int? jerNo;
  final String? pName;

  const Player(this.jerNo, this.pName);
}

main(){
  Player obj = const Player(1, "KLRahul");
  print(obj.hashCode);
}

//o/p

// Run without error.. No Output