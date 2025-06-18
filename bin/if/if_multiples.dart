import 'dart:io';

void main() {
  print("enter the input:");

  int value = int.parse(stdin.readLineSync()!);

  for(int i=1;i<value;i++){
    if(value % i == 0 ){
      print(i);
    }
  }
}
