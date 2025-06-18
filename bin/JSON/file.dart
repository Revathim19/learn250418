import 'dart:io';

void main(){
  File file=File ("file.text");
  IOSink sink=file.openWrite(mode: FileMode.append);
  sink.write("Welcome");
  sink.write("goodbye");
  sink.close();
}