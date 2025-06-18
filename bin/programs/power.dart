import 'dart:math';

void main() {
  {
    List<int> number = [1, 2, 3, 4];
    int out = 0;

    for (int i = 0; i < number.length; i++) {
      int power = 1;

      for (int j = 0; j < number.length - (i + 1); j++) {
        power = 10 * power;
        print(power);
      }
      out = out + number[i] * power;
      print(out);
    }
  }
  {
    List<int> number = [1, 2, 3, 4];
    int out = 0;

    for (int i = 0; i < number.length; i++) {
      int power = 1;

      for (int j = 0; j < i; j++) {
        power = 10 * power;
        print(power);
      }
      out = out + number[i] * power;
      print(out);
    }
  }

}
