class Employee implements Iterator {
  int index = -1;
  var empId = [];
  var empName = [];

  Employee(String empId, String empName) {
    this.empId = empId.split(",");
    this.empName = empName.split(",");
  }

  bool moveNext() {
    if (index < empId.length - 1) {
      index = index + 1;
      return true;
    }
    return false;
  }

  get current {
    if (index >= 0 && index <= empId.length - 1) {
      return "${empId[index]} : ${empName[index]} ";
    }
  }
}

void main() {
  Employee obj = new Employee("1,2,3,4","Abhishekh,Rhea,Sanika,Naira");
  while (obj.moveNext()) {
    print(obj.current);
  }
}
