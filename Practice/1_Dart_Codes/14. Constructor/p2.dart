
//Parameterized Constructor

class Company {
  int? eCount;
  String? eName;
  Company(int eCount, String eName) {
    this.eCount = eCount;
    this.eName = eName;
  }
  void compInfo() {
    print(eCount);
    print(eName);
  }
}

void main() {
  Company obj1 = new Company(1000, "Adenza");
  obj1.compInfo();
  Company obj2 = new Company(2000, "Nvidia");
  obj2.compInfo();
}
