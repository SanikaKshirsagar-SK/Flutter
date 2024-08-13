class Employee{
  int? empId;
  String? empName;

  // Employee(){}
  // Employee(int empId, String empName){}
  //Error: 'Employee' is already declared in this scope.

  // Employee(){}
  //Run without error..

  // Employee(int empId, String empName){}
  //Error: Too few positional arguments: 2 required, 0 given.
}

void main() {
  Employee obj = new Employee();
  print(obj.hashCode);
}