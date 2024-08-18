//ways to create object

class Company {
  int? empid;
  String? name;
  int? salary;

  void printInfo() {
    print(empid);
    print(name);
    print(salary);
  }
}

void main() {
  Company obj1 = new Company();
  obj1.printInfo();

  Company obj2 = Company();
  obj2.printInfo();

  //new Company();
  new Company().printInfo();

  //Company();
  Company().printInfo();
}
