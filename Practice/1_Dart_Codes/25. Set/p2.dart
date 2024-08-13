//Hashset -
//      Internally uses HashTable
//      Insertion order not preserved

import 'dart:collection';

void main() {
  var jNo = HashSet();
  jNo.add(7);
  jNo.add(18);
  jNo.add(45);
  jNo.add(1);
  jNo.add(7);
  print(jNo);   //{1, 18, 45, 7}
}
