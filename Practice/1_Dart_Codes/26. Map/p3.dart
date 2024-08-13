//LinkedHashMap - 
//    Insertion order preser


import 'dart:collection';
void main(){
  var playerInfo = LinkedHashMap();
  playerInfo.addEntries({7: "MS Dhoni", 45: "Rohit", 18: "Virat"}.entries);
  print(playerInfo);  //{7: MS Dhoni, 45: Rohit, 18: Virat}
}