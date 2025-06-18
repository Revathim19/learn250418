import 'dart:convert';
import 'dart:io';

class Hospital {
  String name;
  int age;
  String proffession;

  Hospital(this.name, this.age, this.proffession);
  String toString() {
    return '$name,$age,$proffession';
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "age": age,
        "proffession": proffession,
      };
}

void main() {
  File file = File('MyhospitalsToJson.json');
  IOSink sink = file.openWrite();
  List<Hospital> hospitals = [
    Hospital("xxx", 32, "www"),
    Hospital("name", 31, "wer"),
    Hospital("wsx", 23, "ed")
  ];

  ;
  String jsondata = jsonEncode(hospitals);
  sink.write(jsondata);
  sink.close();

  print("Written to JSON file:");
  print(jsondata);
}
