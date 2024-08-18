//       *
//     * *
//   * * *
// * * * *

import 'dart:io';

void main() {
  int row = 4;
  for (int i = 1; i <= row; i++) {
    for (int sp = 1; sp <= row - i; sp++) {
      stdout.write("  ");
    }
    for (int j = i; j >= 1; j--) {
      stdout.write("* ");
    }
    print('');
  }
}
