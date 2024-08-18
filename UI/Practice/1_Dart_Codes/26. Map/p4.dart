//SplayTreeMap -
//    Sorted order

import 'dart:collection';

void main() {

  var playerInfo = SplayTreeMap();

  playerInfo.addEntries({7: "MS Dhoni", 45: "Rohit", 18: "Virat"}.entries);
  print(playerInfo); //{7: MS Dhoni, 18: Virat, 45: Rohit}

  playerInfo.update(45, (value) => "Rohit Sharma");
  print(playerInfo);  //{7: MS Dhoni, 18: Virat, 45: Rohit Sharma}

  
}
