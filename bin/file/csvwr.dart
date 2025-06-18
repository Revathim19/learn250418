import 'dart:convert';
import 'dart:io';

class Student {
  String name;
  int age;
  String schoolName;

  Student(this.name, this.age, this.schoolName);

  String toString() {
    return '$name,$age,$schoolName';
  }

  void write(IOSink sink) {
    sink.writeln('$name,$age,$schoolName');
  }
}

void main() async {
  File file = File("myfile.csv");
  IOSink sink = file.openWrite();
  List<Map> students = [];
  for (;;) {
    print("Enter the name:");
    String name = stdin.readLineSync()!;
    if (name == "") {
      break;
    }

    print("Enter the age:");
    int age = int.parse(stdin.readLineSync()!);

    print("Enter the schoolName:");
    String schoolName = stdin.readLineSync()!;
    Map map = {"name": name, "age": age, "schoolName": schoolName};

    students.add(map);

    //String jsonlist = jsonEncode(students);
    //print(jsonlist);
    //sink.write(jsonlist);
    Student student = Student(name, age, schoolName);
    student.write(sink);
  }
  await sink.close();
}
