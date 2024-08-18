//Ways to write Constructor

//Way 3 (Default parameter)
class Company {
  int? eCount;
  String? eName;

  Company(this.eCount, {this.eName = "Veritas"});

  void compInfo() {
    print(eCount);
    print(eName);
  }
}

void main() {
  Company obj1 = new Company(1000);
  obj1.compInfo();
  //Company obj2 = new Company(2000, "Nvidia");         //error becoz parameter is default so no need to write default one argument
  //obj2.compInfo();
  Company obj2 = new Company(2000);         
  obj2.compInfo();
}
