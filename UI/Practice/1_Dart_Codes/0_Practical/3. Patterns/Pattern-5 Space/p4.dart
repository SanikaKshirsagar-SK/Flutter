//       4 
//     4 3
//   4 3 2 
// 4 3 2 1

import 'dart:io';

void main() {
  int row = 4;
  for (int i = row; i >= 1; i--) {
    for (int sp = i; sp > 1; sp--) {
      stdout.write("  ");
    }
    for (int j = row; j >= i; j--) {
      stdout.write("$j ");
    }
    print('');
  }
}