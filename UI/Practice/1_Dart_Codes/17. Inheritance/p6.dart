//multi-level inheritance

class ICC {
  ICC() {
    print("ICC");
    print(this.hashCode);
  }
}

class BCCI extends ICC {
  BCCI() {
    print("BCCI");
    print(this.hashCode);
  }
}

class IPL extends BCCI {
  IPL() {
    print("IPL");
    print(this.hashCode);
  }
}

void main() {
  IPL obj = new IPL();
  print(obj.hashCode);
}
