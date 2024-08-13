//Named Parameter 

class Company{
  int? empCnt;
  String? compName;

  Company({this.empCnt, this.compName = "Core2Web"});

  void info(){
    print(empCnt);
    print(compName);
  }
}

void main() {
  Company obj1 = Company(empCnt: 100, compName: "Veritas");
  Company obj2 = Company(compName: "Pubmatic", empCnt: 200);
  Company obj3 = Company(empCnt: 300);
  obj1.info();
  obj2.info();  
  obj3.info();  
}

//o/p

// 100
// Veritas
// 200
// Pubmatic
// 300
// Core2Web