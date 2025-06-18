import 'dart:convert';

import 'package:http/http.dart';

Future<void> main() async {
  Uri uri = Uri.parse('http://localhost:9000/api/1.0/students');
  Response response = await get(uri);
  String body = response.body;
  print(body);
  int status = response.statusCode;
  print(status);
  response = await post(Uri.parse('http://localhost:9000/api/1.0/students'),
      body: jsonEncode(Student("revati", 30)));
  print(response.statusCode.toString() + response.body);
  response = await get(uri);
  print(response.body);
  response = await put(Uri.parse('http://localhost:9000/api/1.0/students/3'),
      body: jsonEncode(Student("revathi", 95)));
  print(response.body);
  print(response.statusCode.toString() + response.body);
  int id = 3;
  response =
      await get(Uri.parse('http://localhost:9000/api/1.0/students/${id}'));
  print(response.body);
  response=await delete(Uri.parse('http://localhost:9000/api/1.0/students/8'));
  print(response.body);
  print(response.statusCode);
}

class Student {
  String name;
  int age;
  Student(this.name, this.age);

  Map<String, dynamic> toJson() => {
        "name": name,
        "age": age,
      };
}
