import 'dart:convert';
import 'dart:io';

class Student {
  String name;
  int age;
  String schoolName;

  Student(this.name, this.age, this.schoolName);
}

void main() {
  List<Map> students = [];
  List<Student> newStudents = [];

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

    String jsonlist = jsonEncode(students);
    print(jsonlist);
    File file = File("newfile.json");
    file.writeAsStringSync(jsonlist);
  }

  File file = File("newfile.json");
  String myStudents = file.readAsStringSync();
dynamic jsonlist=jsonDecode(myStudents);
print(jsonlist);

}
