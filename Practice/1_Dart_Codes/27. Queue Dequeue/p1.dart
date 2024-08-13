//Queue -
//    FIFO
//    By default double ended

import 'dart:collection';

void main() {
  var playerInfo = Queue();
  playerInfo.add(7);
  playerInfo.add(45);
  playerInfo.add(18);
  playerInfo.add(1);
  print(playerInfo); //{7, 45, 18, 1}

  print(playerInfo.runtimeType); //ListQueue<dynamic>

  playerInfo.addFirst(25);
  print(playerInfo);    //{25, 7, 45, 18, 1}

  playerInfo.addLast(35);
  print(playerInfo);  //{25, 7, 45, 18, 1, 35}

  playerInfo.removeFirst();
  print(playerInfo); //{7, 45, 18, 1, 35}

  playerInfo.removeLast();
  print(playerInfo); //{7, 45, 18, 1}
}
