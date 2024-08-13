//factorial

int fact = 1;
void factorial(int x) {
  if (x == 0) {
    return;
  }
  fact = fact * x;
  factorial(x - 1);
}

void main() {
  factorial(5);
  print(fact);
}
