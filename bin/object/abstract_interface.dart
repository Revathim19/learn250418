abstract class Reader {
  void read();
}

abstract class Writter {
  void write();
}

class Information implements Reader, Writter {
  @override
  void read() {
    print("read the information");
  }

  @override
  void write() {
    print("write the information");
  }
}

void main(){
  Information info=Information();
  info.read();
  info.write();
}
