//Ways to write Constructor

class Company {
  int? eCount;
  String? eName;

  //Way 1
  Company(this.eCount, this.eName);

  void compInfo() {
    print(eCount);
    print(eName);
  }
}

void main() {
  //Way 1
  Company obj1 = new Company(1000, "Adenza");
  obj1.compInfo();
  Company obj2 = new Company(2000, "Nvidia");
  obj2.compInfo();
}
