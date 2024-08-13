//Types of Constructor

//4. Const Constructor

class Player {
  final int? jNo;
  final String? pName;
  const Player(this.jNo, this.pName);
  void printInfo() {
    print(jNo);
    print(pName);
  }
}

void main() {
  Player obj1 = const Player(7, "MSD");
  Player obj2 = const Player(7, "MSD");
  obj1.printInfo();
  obj2.printInfo();
  print(obj1.hashCode);   //hashcode is same coz data is same and const constructor is used.
  print(obj2.hashCode);  //hashcode is same coz data is same and const constructor is used.

  Player obj3 = new Player(7, "MSD");
  print(obj3.hashCode);     //hashcode is different coz data is same but const constructor is not used
}
