//Types of Constructor

//3. Named Constructor

class Employee {
  int? empId;
  String? empName;
  Employee() {
    print("No Argument Constructor");
  }
  Employee.cons(this.empId, this.empName) {
    print("Named Constructor");
  }
  void printInfo() {
    print(empId);
    print(empName);
  }
}

void main() {
  Employee obj1 = new Employee();
  obj1.printInfo();
  Employee obj2 = new Employee.cons(100, "Abhay");
  obj2.printInfo();
}
