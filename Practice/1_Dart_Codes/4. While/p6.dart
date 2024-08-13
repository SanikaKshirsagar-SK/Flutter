//sum of all even no and multiplication of odd bet 1- 10
void main() {
  int sum = 0;
  int prod = 1;
  int no = 1;
  while (no <= 10) {
    if (no % 2 == 0) {
      sum = sum + no;
    } else {
      prod = prod * no;
    }
    no++;
  }
  print("sum of even = $sum ");
  print("multiplication of even = $prod ");
}
