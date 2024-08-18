//Pallindrome Number
void main() {
  int no = 2332;
  int oNo = no;
  int rev = 0;
  while (no != 0) {
    int digit = no % 10;
    rev = rev * 10 + digit;
    no = no ~/ 10;
  }
  if (rev == oNo) {
    print("Pallindrome");
  }
  else{
    print("Not Pallindrome");
  }
}
