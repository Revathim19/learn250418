import 'dart:convert';
import 'dart:io';

class Hospital {
  String doctorName;
  int age;
  String profession;

  Hospital(this.doctorName, this.age, this.profession);

  Map<String, dynamic> toJson() =>
      {"name": doctorName, "age": age, "profession": profession};

  factory Hospital.fromJson(Map<String, dynamic> json) {
    return Hospital(
      json['name'],
      json['age'],
      json['profession'],
    );
  }
}

Future<String> writingToJsonFile() async {
  List<Hospital> hospital = [
    Hospital("xxx", 34, "de"),
    Hospital("eds", 35, "des"),
    Hospital("ews", 45, "edc")
  ];

  String hospitallist = jsonEncode(hospital);
  File file = File("Hospital_details.json");
  await file.writeAsString(hospitallist);
  return hospitallist;
}

Future<List<dynamic>> readFromJson() async {
  File file = File("Hospital_details.json");
  String data = await file.readAsString();

  List<dynamic> hospitalslist = jsonDecode(data);
  return hospitalslist;
}

Future<void> main() async {
  print("Writng the data into the json");
  String result =await writingToJsonFile();
  print(result);
  print("Read the data from json");
  List<dynamic> hospitalslist=await readFromJson();
  print(hospitalslist);
  print("close the file");
}
