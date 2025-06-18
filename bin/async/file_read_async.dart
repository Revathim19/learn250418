import 'dart:convert';
import 'dart:io';

class Student {
  String name;
  int age;
  int physics_score;
  int maths_score;
  int chemistry_score;

  Student(this.name, this.age, this.physics_score, this.maths_score,
      this.chemistry_score);

  String toString() {
    return 'name:$name,age:$age,physics_score:$physics_score,maths_score:$maths_score,chemistry_score:$chemistry_score';
  }
}

void main() async {
  Student student = Student("", 0, 0, 0, 0);
  List<dynamic> studentslist = await readFileAsJson();

  List<Student> students = [];

  for (var studentmap in studentslist) {
    student.name = studentmap['name'];
    student.age = studentmap["age"];
    student.physics_score = studentmap["physics_score"];
    student.maths_score = studentmap["maths_score"];
    student.chemistry_score = studentmap["chemistry_score"];

    print(
        "name:${student.name},age:${student.age},physics_score:${student.physics_score},maths_score:${student.maths_score},chemistry_score:${student.chemistry_score}");

    students.add(student);
  }
  print("Students list: $students");
}

Future<List<dynamic>> readFileAsJson() async {
  File file = File('student.json');
  String data = await file.readAsString();
  List<dynamic> studentlist = jsonDecode(data);
  // print(studentList);
  return studentlist;
}
