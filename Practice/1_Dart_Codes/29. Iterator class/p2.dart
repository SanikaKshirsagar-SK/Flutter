/// Iterator on user-defined class

class ProgramLang implements Iterator {
  int index = -1;
  var progLang = [];

  ProgramLang(String lang) {
    this.progLang = lang.split(",");
  }

  bool moveNext() {
    if (index < progLang.length - 1) {
      index = index + 1;
      return true;
    }
    return false;
  }

  get current {
    if (index >= 0 && index <= progLang.length - 1) {
      return "${progLang[index]}";
    }
  }
}

void main() {
  ProgramLang obj = new ProgramLang("CPP,Java,Python,Dart");
  while (obj.moveNext()) {
    print(obj.current);
  }
}
