//Map -
//    Key-value pair
//    This type internally uses LinkedHasMap

void main() {

  var playerInfo = {7: "MS Dhoni", 45: "Rohit", 18: "Virat"};
  print(playerInfo);   //{7: MS Dhoni, 45: Rohit, 18: Virat}

  playerInfo[1]= "KL Rahul";
  print(playerInfo);  //{7: MS Dhoni, 45: Rohit, 18: Virat, 1: KL Rahul}

}
