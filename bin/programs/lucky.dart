import 'dart:io';
import 'dart:math';

void main() {
  Random number = Random();
  int questions=0;
  int matched=0;
  int unmatched=0;
  for (;;) {
    stdout.write('Guess the number:');
    questions++;
    String guess = stdin.readLineSync()!;
    if (guess == " ") {
      break;
    }
    int value=int.parse(guess);

    int num=number.nextInt(10);
    if(value==num){
      matched++;
      print('matched:$value,$num');
      matched++;

    } else{
      print('unmatched:$value,$num');
      unmatched++;

    }
    print('Asked: $questions, Guessed:$matched, worng: $unmatched');
  }
}
