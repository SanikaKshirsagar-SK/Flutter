import 'dart:collection';

final class Company extends LinkedListEntry<Company> {
  int? empCnt;
  String? compName;
  double? rev;
  Company(this.empCnt, this.compName, this.rev);

  @override
  String toString() {
    return "$empCnt $compName $rev";
  }
}

void main() {
  var compInfo = LinkedList<Company>();
  compInfo.add(new Company(700, "Veritas", 1000.00));
  compInfo.add(new Company(800, "Pubmatic", 2000.00));
  compInfo.add(new Company(900, "VMWare", 3000.00));

  print(compInfo);    // (700 Veritas 1000.0, 800 Pubmatic 2000.0, 900 VMWare 3000.0)
}
