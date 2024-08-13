//       4 
//     3 4
//   2 3 4
// 1 2 3 4


import 'dart:io';

void main() {
  int row = 4;
  for (int i = row; i >= 1; i--) {
    for (int sp = i; sp > 1; sp--) {
      stdout.write("  ");
    }
    for (int j = i; j <= row; j++) {
      stdout.write("$j ");
    }
    print('');
  }
}