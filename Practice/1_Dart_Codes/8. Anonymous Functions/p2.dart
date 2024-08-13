var add = (int a, int b) {
  return a + b;
};
void main() {
  print(add(10, 20));

  //returns type of parameters and return value
  print(add.runtimeType);

  //if no parameter and return value then () => Null
  var sub = () {
    print('object');
  };

  print(sub.runtimeType);
}
