//list properties

void main() {
  List player = ["Virat", "Rohit", "KLRahul", "Shreyas"];

  print(player);       //[Virat, Rohit, KLRahul, Shreyas][Virat, Rohit, KLRahul, Shreyas]

  print(player.first);  //Virat

  print(player.hashCode); //540166130

  print(player.isEmpty);  //false

  print(player.isNotEmpty); //true

  print(player.last);     //Shreyas

  print(player.length);   //4

  print(player.reversed);   //(Shreyas, KLRahul, Rohit, Virat)

  print(player.runtimeType);  //List<dynamic>

  print(player.single);   //Error - Too many elements
}
