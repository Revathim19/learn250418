import 'dart:convert';
import 'dart:io';

class Student {
  String name;
  int age;
  String grade;

  Student(this.name, this.age, this.grade);

  String toString() {
    return 'name:$name,age:$age,grade:$grade';
  }
}

Future<String> writeToJson() async {
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

  String jsondata = jsonEncode(map);
  File file = File("myjsonfile.json");
 await file.writeAsString(jsondata);

  return jsondata;
}

void main() async {
  String result = await writeToJson();
  print("JSON written to file:");
  print(result);
}
