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

  factory Hospital.fromJson(Map<String, dynamic> json) {
    return Hospital(
        json["name"],
    json["age"],
    json["proffession"]
    );
  }
}

void main(){
  File file = File('MyhospitalsToJson.json');
  String data=file.readAsStringSync();
  dynamic hospitalData=jsonDecode(data);
  print(hospitalData);

}