// 10 9 8 7
// 6 5 4
// 3 2
// 1

import 'dart:io';

void main() {
  int x = 10;
  for (int i = 1; i <= 4; i++) {
    for (int j = 4; j >= i; j--) {
      stdout.write("$x ");
      x--;
    }
    print('');
  }
}
