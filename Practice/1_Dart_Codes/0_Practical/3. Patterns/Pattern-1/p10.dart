import "dart:io";

void main() {
  for (int i = 1; i <= 3; i++) {
    for (int j = i; j <= i+4; j = j+2) {
      stdout.write("$j ");
    }
    print(" ");
  }
}
