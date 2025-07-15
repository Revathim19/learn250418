import 'dart:convert';

String longest(String a, String b) {

  String input=a+b;
 List<int> data= input.codeUnits;
   print(data);
   List<int> sortData=[];
   for(int i=97;i<123;i++){
     if(data.contains(i)){
       sortData.add(i);
     }else{
       i++;
     }
   }
   print(sortData);
  String codetoString=utf8.decode(sortData);
 // print(codetoString);


  return codetoString;
}

void main(){
  String output=longest("abcdfhlszqaaae", "waldfbvytuiopwghjkl");
  print(output);
}