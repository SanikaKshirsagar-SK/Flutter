//       1 
//     1 2
//   1 2 3
// 1 2 3 4

import 'dart:io';

void main() {
  int row = 4;
  for (int i = 1; i <= row; i++) {
    for (int sp = 1; sp <= row - i; sp++) {
      stdout.write("  ");
    }
    for (int j = 1; j <= i; j++) {
      stdout.write("$j ");
    }
    print('');
  }
}
