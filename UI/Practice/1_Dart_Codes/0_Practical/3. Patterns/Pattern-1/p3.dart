import "dart:io";

void main() {
  int x = 14;
  for (int i = 1; i <= 4; i++) {
    for (int j = 1; j <= 4; j++) {
      stdout.write("$x ");
    }
    x++;
    print(" ");
  }
}
