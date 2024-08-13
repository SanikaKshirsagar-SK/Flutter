//SplayTreeMap -
//    Sorted order

import 'dart:collection';

void main() {
  var playerInfo = {7: "MS Dhoni", 45: "Rohit", 18: "Virat"};

  print(playerInfo); //{7: MS Dhoni, 18: Virat, 45: Rohit}

  var constPlayer = UnmodifiableMapView(playerInfo);
  print(constPlayer); //{7: MS Dhoni, 18: Virat, 45: Rohit}

  //constPlayer[45] = "Rohit Sharma"; //Error - Cannot modify unmodifiable map


  // var Player = UnmodifiableMapBase(playerInfo); //Error: The class 'UnmodifiableMapBase' is abstract and can't be instantiated
  // print(Player);

  // Player[45] = "Rohit Sharma";
}
