//Optional Parameter

class Company{
  int? empCnt;
  String? compName;

  Company(this.empCnt, [this.compName = "Veritas"]);

  void info(){
    print(empCnt);
    print(compName);
  }
}

void main() {
  Company obj1 = Company(100);
  Company obj2 = Company(200, "Pubmatic");

  obj1.info();
  obj2.info();  
}

//o/p

// 100
// Veritas
// 200
// Pubmatic