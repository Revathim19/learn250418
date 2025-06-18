import 'dart:convert';
import 'dart:io';

class Student {
  String name;
  int age;
  int physcis_score;
  int maths_score;
  int chemistry_score;

  Student(this.name, this.age, this.physcis_score, this.maths_score,
      this.chemistry_score);
}

void main() {
  List<Map> students = [];

  for (;;) {
    print("Enter the name:");
    String name = stdin.readLineSync()!;
    if (name == "") {
      break;
    }

    print("Enter age:");
    int age = int.parse(stdin.readLineSync()!);

    print("Enter physcis_score:");
    int physcis_score = int.parse(stdin.readLineSync()!);

    print("Enter maths_score:");
    int maths_score = int.parse(stdin.readLineSync()!);

    print("Enter chemistry_score:");
    int chemistry_score = int.parse(stdin.readLineSync()!);

    Map map = {
      "name": name,
      "age": age,
      "physics_score": physcis_score,
      "maths_score": maths_score,
      "chemistry_score": chemistry_score
    };

    //String studentjson = jsonEncode(map);
    //print("Student details $studentjson");
    students.add(map);
  }

  String studentsjson = jsonEncode(students);
  print("Student details $studentsjson");
  File file = File("student.json");
  file.writeAsStringSync(studentsjson);

  print("Write the data in the text file");
}
