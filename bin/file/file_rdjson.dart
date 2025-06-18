import 'dart:convert';
import 'dart:io';

class Student {
  String name;
  int age;
  String grade;

  Student(this.name, this.age, this.grade);
}

Future<List<dynamic>> ReadFileAsJson() async {
  File file = File("studentsjson.json");
  String data = await file.readAsString();

  List<dynamic> students = jsonDecode(data);
  return students;
}

void main() async {
  Student student = Student("aa", 0, "de");
  List<dynamic> studentlist = await ReadFileAsJson();
  print(studentlist);


  }
