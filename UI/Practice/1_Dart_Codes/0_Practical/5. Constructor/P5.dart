//Default Argument

class Company{
  int? empCnt;
  String? compName;

  Company(this.empCnt, {this.compName = "Veritas"});

  void info(){
    print(empCnt);
    print(compName);
  }
}

void main() {
  Company obj1 = Company(100);
  // Company obj2 = Company(200, "Pubmatic");
//   Error: Too many positional arguments: 1 allowed, but 2 found.
//   Try removing the extra positional arguments.
  
  
  Company obj3 = Company(300);

  obj1.info();
  obj3.info();  
}

//o/p

// 100
// Veritas
// 300
// Veritas
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       