import 'dart:convert';

void main(){
  int number=2;

 String numberjson= jsonEncode(number);
 print(numberjson);



 String name="Revati";

 String namejson=jsonEncode(name);
 print(namejson);
  dynamic mynamedecode=jsonDecode(namejson);
  print(mynamedecode);



 List<int> numbers=[1,2,3,4,5];
  String numbersjson=jsonEncode(numbers);
  print(numbersjson);

  List<dynamic> numbersdecode=jsonDecode(numbersjson);
  print(numbersdecode);

  List<String> names=["Revati","Rav","Te","Man"];

  String namesjson=jsonEncode(names);
  print(namesjson);

  List<dynamic> namedecode=jsonDecode(namesjson);
  print(namedecode);


  Map map={
    "name": "Myname",
    "age":25,

  };

  String mapjson=jsonEncode(map);
  print(mapjson);
  Map mapdecode=jsonDecode(mapjson);
  print(mapdecode);


}