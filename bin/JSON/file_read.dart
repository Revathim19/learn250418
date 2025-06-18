import 'dart:io';

void main(){
  File file=File("file.text");
  String data=file.readAsStringSync();
  print("Read the data $data");
}