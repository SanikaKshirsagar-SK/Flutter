// normal function and function with return value
void fun(int x, int y) {
  print(x + y);
}

int fun1(int x, int y) {
  return x + y;
}

void main() {
  fun(10, 20);
  print(fun1(20, 20));
  int retval = fun1(40, 50);
  print('$retval');
}
