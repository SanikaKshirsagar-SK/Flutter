//Ways to write Constructor

//Way 4 (Named parameter)
class Company {
  int? eCount;
  String? eName;

  Company({this.eCount, this.eName = "fgfhgfh"}); //curly braces are compulsory

  void compInfo() {
    print(eCount);
    print(eName);
  }
}

void main() {
  Company obj1 = new Company(eCount: 1000, eName: "Veritas");
  obj1.compInfo();
  Company obj2 = new Company(eName: "Pubmatic", eCount: 2000);
  obj2.compInfo();
  Company obj3 = new Company(eCount: 3000);
  obj3.compInfo();
}
