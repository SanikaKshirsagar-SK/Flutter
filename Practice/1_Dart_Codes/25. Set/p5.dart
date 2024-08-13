//UnmodifiableSetView -
//    Can't modiy it

import 'dart:collection';

void main() {
  var jNo = {10, 7, 45, 1, 18};
  var No = UnmodifiableSetView(jNo);

  print(jNo); //{10, 7, 45, 1, 18}
  print(No); //{10, 7, 45, 1, 18}

  //No.add(11);   //Error - Cannot change an unmodifiable set
}
