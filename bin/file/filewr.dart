import 'dart:convert';
import 'dart:io';

class Student {
  String name;
  int age;
  int standard;


  Student(this.name, this.age, this.standard);
  String toString() {
    return "name:$name,age:$age,standard:$standard";
  }

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
    "standard": standard,
  };
}

void main() {
  List<Student> students = [];
  for (;;) {
    print("Enter the name:");
    String name = stdin.readLineSync()!;
    if (name == "") {
      break;
    }

    print("Enter the age:");
    int age = int.parse(stdin.readLineSync()!);

    print("Enter the class:");
    int standard = int.parse(stdin.readLineSync()!);

    Student student = Student(name, age, standard);

    students.add(student);
    print(students);
  }

  /*{
    final builtins = [];
    for (final student in students) {
      builtins.add({
        "name": student.name,
        "age": student.age,
        "standard": student.standard,
      });
    }
    String jsonlist = jsonEncode(builtins);
    // print(jsonlist);
    File file = File('studentslist.json');
    file.writeAsStringSync(jsonlist);
  }*/

  {
    String jsonlist = jsonEncode(students);
    // print(jsonlist);
    File file = File('studentslist.json');
    file.writeAsStringSync(jsonlist);
  }
}
