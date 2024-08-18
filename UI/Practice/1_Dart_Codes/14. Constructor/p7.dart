//Types of Constructor

//1.Default Constructor

class Employee {
  int? empId;
  String? empName;
  Employee() {
    print("Default Constructor");
  }
  void printInfo() {
    print(empId);
    print(empName);
  }
}

void main() {
  Employee obj1 = new Employee();
  obj1.printInfo();
  Employee obj2 = new Employee();
  obj2.empId = 1000;
  obj2.empName = "ABCD";
  obj2.printInfo();
}
