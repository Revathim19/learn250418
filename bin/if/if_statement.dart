import 'dart:io';

void main() {
  int number = 10;

  for (;;) {
    print("Enter the input:");
    String input = stdin.readLineSync()!;
    if (input == "") {
      break;
    }

    int value = int.parse(input);

    if (number == value) {
      print("number is matched");
      break;
    } else {
      print("number is not matched.Try again");
    }
  }
}
