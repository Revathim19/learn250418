import 'dart:convert';
import 'dart:io';

class Hospital {
  String doctorName;
  int age;
  String profession;

  Hospital(this.doctorName, this.age, this.profession);
}

Future<String> writeToJsonfile() async {
  List<Hospital> hospital= [Hospital("wax", 35, "esd"),
    Hospital("wgg", 38, "hb"),
    Hospital("gbv", 30, "ed")];

  List<Map> hospitals=[];

  for(Hospital myhospital in hospital){
    hospitals.add({
      "name":myhospital.doctorName,
      "age":myhospital.age,
      "profession":myhospital.profession

    });
  }
  String data = jsonEncode(hospitals);
  print(data);
  File file = File('newfile.json');
  String hospitalData = await file.readAsString();
  return hospitalData;


}
Future<void> main() async{
 String hospitaldata= await writeToJsonfile();
 print(hospitaldata);

}