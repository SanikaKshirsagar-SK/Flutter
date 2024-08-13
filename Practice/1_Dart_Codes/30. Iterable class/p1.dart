//Iterable class methods

void main() {
  var players = ["Rohit", "Shubman", "Virat", "KLRahul", "Shreyas", "Hardik"];

  print(players); //[Rohit, Shubman, Virat, KLRahul, Shreyas, Hardik]

//1. any

  var retVal1 = players.any((element) => element[0] == "V");
  print(retVal1); //true

  var retVal2 = players.any((element) => element.length == 5);
  print(retVal2); //true

//2. contains
  print(players.contains("Rohit")); //true

//3. elementAt

  print(players.elementAt(2)); //Virat

//4. every
  print(players.every((element) => element[0] == "Z")); //false

  print(players.every((element) => element.length > 4)); //true

//5. firstWhere
  print(players.firstWhere((element) => element[0] == "R")); //Rohit

//6. lastWhere
  print(players.lastWhere((element) => element[0] == "V")); //Virat

//7. fold
  var initVal = " ";
  var retVal3 = players.fold(initVal, (preVal, element) => preVal + element);
  print(retVal3); //RohitShubmanViratKLRahulShreyasHardik

//8. followedBy
  var retVal4 = players.followedBy(["Ravindra", "Bumrah"]);
  print(
      retVal4); //(Rohit, Shubman, Virat, KLRahul, Shreyas, Hardik, Ravindra, Bumrah)

//9. forEach
  players.forEach((print));

  //Rohit
  // Shubman
  // Virat
  // KLRahul
  // Shreyas
  // Hardik

//10. join

  print(players.join(
      " => ")); //Rohit => Shubman => Virat => KLRahul => Shreyas => Hardik

//11. map

  print(players.map((e) =>
      e +
      "INDIA")); //(RohitINDIA, ShubmanINDIA, ViratINDIA, KLRahulINDIA, ShreyasINDIA, HardikINDIA)

//12. reduce

  print(players.reduce((value, element) =>
      value + element)); //RohitShubmanViratKLRahulShreyasHardik

//13. singleWhere

  print(players.singleWhere((element) => element.length == 6)); //Hardik

//14. skip

  print(players.skip(4)); //(Shreyas, Hardik)

//15. skipWhile

  print(players.skipWhile((value) =>
      value.length == 6)); //(Rohit, Shubman, Virat, KLRahul, Shreyas, Hardik)

//16. take
  print(players.take(4)); //(Rohit, Shubman, Virat, KLRahul)

//17. takeWhile
  print(players.takeWhile((value) => value.length == 5)); //(Rohit)

//18. toList

  print(players.toList());    //[Rohit, Shubman, Virat, KLRahul, Shreyas, Hardik]

//19. toSet
  print(players.toSet());   //{Rohit, Shubman, Virat, KLRahul, Shreyas, Hardik}

//20. where
  print(players.where((element) => element.length == 5));   //(Rohit, Virat)
}
