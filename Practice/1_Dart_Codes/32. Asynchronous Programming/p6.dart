//Future returning Exception
Future<void> getOrder() {
  return Future.delayed(
      Duration(seconds: 5), () => throw Exception("Burger Samplet"));
}

void main() {
  print("Start");
  getOrder();
  print("End"); 
}

//o/p

// Start
// End
// Unhandled exception:
// Exception: Burger Samplet