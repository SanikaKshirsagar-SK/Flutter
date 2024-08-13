// 1 2 3 4
// 2 3 4
// 3 4
// 4


import 'dart:io';

void main() {
  for (int i = 1; i <= 4; i++) {
    for (int j = i; j <= 4; j++) {
      stdout.write("$j ");
    }
    print('');
  }
}