//Ways to write Constructor

//Way 2 (Optional parameter)
class Company {
  int? eCount;
  String? eName;

  Company(this.eCount, [this.eName = "Veritas"]);

  void compInfo() {
    print(eCount);
    print(eName);
  }
}

void main() {

  Company obj1 = new Company(1000); //No error becoz arg is optional
  obj1.compInfo();
  Company obj2 = new Company(2000, "Nvidia");
  obj2.compInfo();

}
