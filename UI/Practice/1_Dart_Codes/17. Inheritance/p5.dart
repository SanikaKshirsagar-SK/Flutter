class Company {
  String? cName;
  String? loc;

  Company(this.cName, this.loc);

  void disp() {
    print(cName);
    print(loc);
  }
}

class Employee extends Company{
  String? eName;
  int? eId;

  Employee(this.eName, this.eId, String cName, String loc):super(cName,loc);

  void printData() {
    print(eId);
    print(eName);
  }
}

void main(){
  Employee obj = new Employee("Abhishekh", 1001, "Veritas", "Pune");
  obj.disp();
  obj.printData();
}
