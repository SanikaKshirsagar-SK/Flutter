//SplayTreeSet -
//    Sorted Order
//    By default ascending

import 'dart:collection';

void main() {
  var jNo = SplayTreeSet();
  jNo.add(7);
  jNo.add(18);
  jNo.add(45);
  jNo.add(1);
  jNo.add(7);
  print(jNo); //{1, 7, 18, 45}

  // jNo.add("Virat"); //Error - type 'String' is not a subtype of type 'num' of 'other'
  // print(jNo);
}
