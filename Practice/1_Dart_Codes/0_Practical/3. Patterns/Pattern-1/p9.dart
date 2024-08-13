import "dart:io";

void main() {
  for (int i = 1; i <= 4; i++) {
    for (int j = i; j <= i+3; j++) {
      stdout.write("$j ");
    }
    print(" ");
  }
}
