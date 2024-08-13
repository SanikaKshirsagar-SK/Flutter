import 'Material.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends Stateless{

  const MyApp();  

  @override
  Widget build(BuildContext context){
    print("In Myapp : bulid()");
    return MaterialApp();
  }
}

//o/p

// In runApp
// In BuildContext class
// In Myapp : bulid()
// In MaterialApp Constructor