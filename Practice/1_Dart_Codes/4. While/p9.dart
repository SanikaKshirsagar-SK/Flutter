//Reverse Number
void main() {
  int no = 94211423;
  int rev = 0;
  while (no != 0) {
    int digit = no % 10;
    rev = rev * 10 + digit;
    no = no ~/ 10;
  }
  print(rev);
}
