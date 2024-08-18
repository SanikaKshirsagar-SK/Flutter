//LinkedHashset -
//      Insertion order preserved

import 'dart:collection';

void main() {
  var jNo = LinkedHashSet();
  jNo.add(7);
  jNo.add(18);
  jNo.add(45);
  jNo.add(1);
  jNo.add(7);
  print(jNo);   //{7, 18, 45, 1}
}
