import 'dart:convert';
import 'dart:io';

void main() async {
  List<dynamic> mydata = await readFileAsJson();
  print(mydata);
}

Future<String> readFileAsString() async {
  File file = File('student.json');
  String data = await file.readAsStringSync();
  return data;
}

Future<List<dynamic>> readFileAsJson() async {
  File file = File('student.json');
  String data = await file.readAsString();
  List<dynamic> studentlist = jsonDecode(data);
  // print(studentList);
  return studentlist;
}

String readFileAsStringSync() {
  File file = File('student.json');
  String data = file.readAsStringSync();
  return data;
}

List<dynamic> readFileAsJsonSync() {
  File file = File('student.json');
  String data = file.readAsStringSync();
  List<dynamic> studentlist = jsonDecode(data);
  return studentlist;
}
