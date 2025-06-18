import 'dart:convert';
import 'dart:io';

class Hospital {
  String name;
  int age;
  String proffession;

  Hospital(this.name, this.age, this.proffession);
}

void main() {
  List<Hospital> hospitals = [
    Hospital("xxx", 32, "www"),
    Hospital("name", 31, "wer"),
    Hospital("wsx", 23, "ed")
  ];
  List<dynamic> myhospitals = [];

  for (Hospital hospitallist in hospitals) {
    myhospitals.add(hospitallist);
    print(myhospitals);
  }

  String jsonlist = jsonEncode(myhospitals);
  File file = File("Hospital.json");
  file.writeAsString(jsonlist);
}
