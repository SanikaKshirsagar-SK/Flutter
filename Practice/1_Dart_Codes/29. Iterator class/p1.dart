void main() {
  var player = ["Virat", "Rohit", "KL Rahul"];

  var itr = player.iterator;
  while (itr.moveNext()) {
    print(itr.current);
  }
}
