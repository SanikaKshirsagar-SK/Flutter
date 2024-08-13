import "dart:io";

void main() {
  int row = 4;
  for (int i = 1; i <= row; i++) {
    for (int j = i; j < i + row; j++) {
      stdout.write("$j ");
    }
    print(" ");
  }
}


// o/p

// 1 2 3 4  
// 2 3 4 5
// 3 4 5 6
// 4 5 6 7

// import "dart:io";

// void main() {
//   for (int i = 1; i <= 4; i++) { 
//     for (int j = 0; j < 4; j++) {
//       int x = i + j;
//       stdout.write("$x ");     
//     }
//     print(" ");
//   }
// }
