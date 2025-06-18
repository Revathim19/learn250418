import 'dart:convert';
import 'dart:io';

class Hospital {
  String name;
  int age;
  String profession;

  Hospital(this.name, this.age, this.profession);

  String toString() {
    return '$name,$age,$profession';
  }
}

//void main()  {
void main() async{
  /*{
    File file = File('Myhospitalslist.json');
    IOSink sink = file.openWrite();
    List<Hospital> hospital = [];
    List<Hospital> hospitals = [
      Hospital("xxx", 32, "www"),
      Hospital("name", 31, "wer"),
      Hospital("wsx", 23, "ed")
    ];

    for (Hospital myHospital in hospitals) {
      sink.writeln(myHospital); // uses toString()
    }
    print(hospitals);
  }*/

  {
    File file = File('Myhospitalslist.json');
    IOSink sink = file.openWrite();
    List<Hospital> hospital = [];
    List<Hospital> hospitals = [
      Hospital("xxx", 32, "www"),
      Hospital("name", 31, "wer"),
      Hospital("wsx", 23, "ed")
    ];

    for (Hospital myhospital in hospitals) {
      hospital.add(myhospital);
    }
    List<Map> listOfhospital = [];

    for (dynamic newHospital in hospital) {
      listOfhospital.add({
        'name': newHospital.name,
        'age': newHospital.age,
        'proffession': newHospital.proffession,
      });
    }
    String jsondata = jsonEncode(listOfhospital);
    sink.write(jsondata);
    await sink.close();

    print("Written to JSON file:");
    print(jsondata);


    // File file = File("Myhospitalslist.json");
   // String data = file.readAsStringSync();
  //  String data= await file.readAsString();
   // dynamic studentsdata = jsonDecode(data);
   // print("Read hospital data $studentsdata");

  //  File file = File('MyhospitalsToJson.json');
    String data=file.readAsStringSync();
    dynamic hospitalData=jsonDecode(data);
    print(hospitalData);
  }

}
