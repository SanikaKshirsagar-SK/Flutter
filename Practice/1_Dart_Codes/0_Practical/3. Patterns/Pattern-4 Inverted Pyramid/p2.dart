// 1 1 1 1
// 2 2 2
// 3 3
// 4

import 'dart:io';
void main(){
  for (int i = 1; i <= 4; i++) {
    for (int j = 4; j >= i; j--) {
      stdout.write("$i ");
    }
    print('');
  }
}