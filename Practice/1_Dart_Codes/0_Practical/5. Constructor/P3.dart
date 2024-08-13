class Demo{
  final int? x;
  final String? str;

  const Demo(this.x, this.str);
}


void main() {
  Demo obj1 = const Demo(10, "Binecaps");
  print(obj1.hashCode);

  Demo obj2 = const Demo(10, "Incubator");
  print(obj2.hashCode);
}

// In const obj if data of two object is same 
// then it creats only one object that is same hashCode...

//o/p

// 382226153
// 727269989