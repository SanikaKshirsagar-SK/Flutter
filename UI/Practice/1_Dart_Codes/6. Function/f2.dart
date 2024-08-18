void fun() {
  print("Hello");
}

void fun1(int x, double y) {
  print(x);
  print(y);
}

//Default Parameter
void fun2(String name, [double salary = 10000]) {
  print(name);
  print(salary);
}

//Named Argument
void fun3({String? name, double? salary}) {
  print(name);
  print(salary);
}

void fun4({String? name, double? salary}) {
  print(name);
  print(salary);
}

void fun5(String team, {String? name, int? jerNo}) {
  print(team);
  print(name);
  print(jerNo);
}

void fun6({String? name, int? jerNo, String team = "India"}) {
  print(team);
  print(name);
  print(jerNo);
}

void fun7({String? name, required int jerNo}) {
  print(name);
  print(jerNo);
}

void main() {
  // fun();

  // fun1(10, 20);
  // fun1(10, 20.5);

  // fun2("Sanika");
  // fun2("Rhea", 50000);

  // //Null Safety

  // //int x = null;
  // int? y = null;
  // print(y);
  // y = 50;
  // print(y);
  // //y = 50.5;       //double data can't be assigned to int type
  // //print(y);

  // double z = 5.00;
  // print(z);

  // z = 50; //int can be assigned to double type
  // print(z);

  //  fun3(salary: 1.35, name: "Sanika");
  //  fun4(name: "Sanika");
  // fun5("India");
  // //fun5("India", "Virat", 18);       // named arg not given
  // fun5("India", jerNo: 18, name: "Virat");

  // fun6(jerNo: 18, name: "Virat");
  // fun6(jerNo: 18, name: "Virat", team: "Sri Lanka");

  // fun7(name: "Virat", jerNo: 18);
  //  // fun7(name: "Virat");                // required jerNo
}
