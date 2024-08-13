//square of even digit
import "dart:io";

void main() {
  int no = 942111423;
  int res = 0;
  while (no != 0) {
    int digit = no % 10;
    if (digit % 2 == 0) {
      res = (digit * digit);
      stdout.write("$digit is $res ");
    }
    no = no ~/ 10;
  }
}
