import 'dart:convert';
import 'dart:io';

class Student {
  String name;
  int age;
  String grade;

  Student(this.name, this.age, this.grade);
}

void main() {
  List<Student> students = [];
  List<Student> student = [
    Student("name", 43, "A"),
    Student("XXX", 23, "A+"),
    Student("QQQ", 6, "B")
  ];
  List<Map> map = [];

  for (Student students in student) {
    map.add({
      "name": students.name,
      "age": students.age,
      "grade": students.grade,
    });
  }

  String jsonStudent = jsonEncode(map);
  print(jsonStudent);
   File file=File("studentsjson.json");
   file.writeAsString(jsonStudent);
  
}
