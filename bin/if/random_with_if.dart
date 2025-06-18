import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int number = random.nextInt(10);
//  print(number);

  for (;;) {
    print("Enter the value:");

    String input = stdin.readLineSync()!;
    if (input == "") {
      break;
    }

    int value = int.parse(input);

    if (value == number) {
      print("number is matched");
      break;
    } else if(value<number){
      print("input value is less than random number,try again");
    } else{
      print("input value is greater than random number,try again");
    }
  }
}
