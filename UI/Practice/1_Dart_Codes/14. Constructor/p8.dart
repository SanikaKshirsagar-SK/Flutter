//Types of Constructor

//2. Parameterized Constructor

class Employee {
  int? empId;
  String? empName;
  Employee(this.empId, this.empName) {
    print("Parameterized Constructor");
  }
  void printInfo() {
    print(empId);
    print(empName);
  }
}

void main() {
  Employee obj1 = new Employee(100, "Abhay");
  obj1.printInfo();
  Employee obj2 = new Employee(200, "Kanha");
  obj2.printInfo();
}
