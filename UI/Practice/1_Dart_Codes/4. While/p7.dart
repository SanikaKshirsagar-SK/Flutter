import "dart:io";

void main() {
  int no = 6;
  if (no % 2 == 0) {
    while (no > 0) {
      stdout.write("$no ");
      no--;
    }
  } else {
    while (no > 0) {
      stdout.write("$no ");
      no -= 2;
    }
  }
}


// input = 7 
// output = 7 5 3 1 

// input = 6
// output = 6 5 4 3 2 1 