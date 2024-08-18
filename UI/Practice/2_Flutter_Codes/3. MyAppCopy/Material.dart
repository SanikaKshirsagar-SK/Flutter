
class BuildContext {
  BuildContext(){
    print("In BuildContext class");
  }
}

abstract class Widget{
  const Widget();
  Widget build(BuildContext context);
}
abstract class Stateless extends Widget{
  // Widget build(BuildContext context){
  //   print("In stateless : bulid");
  //   return Widget();
  // }
  const Stateless();
  Widget build(BuildContext context);
}

class MaterialApp extends Widget{
  MaterialApp(){
    print("In MaterialApp Constructor");
  }
  Widget build(BuildContext context){
    return MaterialApp();
  }
}

void runApp(Widget obj){
  print("In runApp");
  BuildContext objVal = BuildContext();
  obj.build(objVal);
}