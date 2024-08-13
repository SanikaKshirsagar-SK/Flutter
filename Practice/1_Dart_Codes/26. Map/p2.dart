//HashMap -
//    Insertion Order is not preserved
//    Uses HashTable

import 'dart:collection';

void main() {
  var playerInfo = HashMap();

  //way 1 to add
  playerInfo.addEntries({7: "MS Dhoni", 45: "Rohit", 18: "Virat"}.entries);
  print(playerInfo);  //{18: Virat, 45: Rohit, 7: MS Dhoni}

  //way 2
  playerInfo[1] = "KL Rahul";
  print(playerInfo);    //{1: KL Rahul, 18: Virat, 45: Rohit, 7: MS Dhoni}

  //way 3
  playerInfo.addAll({5: "Shubman"});
  print(playerInfo);  //{1: KL Rahul, 18: Virat, 5: Shubman, 45: Rohit, 7: MS Dhoni}
}
