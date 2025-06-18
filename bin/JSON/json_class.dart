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

void main() {
  List<Student> mystudents = [];
  Student student = Student("", 0, 0, 0, 0);

  File file = File("student.json");
  String data = file.readAsStringSync();

  List<dynamic> studentlist = jsonDecode(data);
  // print(studentList);

  for (var studentmap in studentlist) {
    student.name = studentmap['name'];
    student.age = studentmap["age"];
    student.physics_score = studentmap["physics_score"];
    student.maths_score = studentmap["maths_score"];
    student.chemistry_score = studentmap["chemistry_score"];

    print(
        "name:${student.name},age:${student.age},physics_score:${student.physics_score},maths_score:${student.maths_score},chemistry_score:${student.chemistry_score}");

    mystudents.add(student);
  }
  print(mystudents);
}
