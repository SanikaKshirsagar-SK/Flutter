// 2 4 6 8
// 10 12 14
// 16 18
// 20
import 'dart:io';

void main() {
  int x = 2;
  for (int i = 1; i <= 4; i++) {
    for (int j = 4; j >= i; j--) {
      stdout.write("$x ");
      x+=2;
    }
    print('');
  }
}
