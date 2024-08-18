//print 1-10

int x = 1;
void fun() {
  if (x > 10) {
    return;
  }
  print(x);
  x++;
  fun();
}

void main() {
  fun();
}
