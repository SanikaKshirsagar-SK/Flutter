// Future<String> getOrder() {
//   return Future.delayed(Duration(seconds: 5), () => "Burger");
// }

// String getOrderMsg() {
//   var order = getOrder();
//   return "Your Order is $order";
// }

// void main() {
//   print("Start main");
//   print(getOrderMsg());
//   print("End main");
// }

//o/p

// Start main
// Your Order is Instance of 'Future<String>'
// End main

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 5), () => "Burger");
}

Future<String> getOrderMsg() async{
  var order = await getOrder();
  return "Your Order is $order";
}

Future<void> main() async{
  print("Start main");
  print(await getOrderMsg());
  print("End main");
}
