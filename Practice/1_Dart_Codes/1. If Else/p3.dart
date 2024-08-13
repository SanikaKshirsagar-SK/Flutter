void main() {
  int x = 5;
  int y = 6;
  if (++x == y++) {
    print("Both values are same..");
  } else {
    print("Not same..");
  }
  print(x);
  print(y);
}
