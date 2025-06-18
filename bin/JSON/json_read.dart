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
  //String studentsjson = jsonDecode("student.json");
//  print("Student details $studentsjson");
  File file = File("student.json");
  String studentsjson = file.readAsStringSync();
  print(studentsjson);
  //studentsjson[0]["physics_score"];

  List<dynamic> students = jsonDecode(studentsjson);
  print(students[0]["physics_score"]);

  for (int i = 0; i < students.length; i++) {
    if (students[i]["name"] == "rev") {
      print(students[i]["physics_score"]);
    }
  }

  for (Map student in students) {
    if (student["name"] == "rev") {
      print(student["physics_score"]);
    }
  }
}
