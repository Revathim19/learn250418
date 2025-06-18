import 'dart:math';

int tenPower(int power) {
  int result = 1;
  for (int i = 0; i < power; i++) {
    result = result * 10;
  }
  return result;
}

int toInt(String str) {
  // String str = Random().nextInt(10000).toString();
  int value = 0;

  for (int i = 0; i < str.length; i++) {
    //  print('${str[i]}');
    int digit = int.parse(str[i]);
    int number = digit * tenPower(str.length - i - 1);
    //   print('$i,$digit,$number');
    value = value + number;
  }
//  print(value);
  return value;
}

void main() {
  print(toInt('1234'));
  int out = toInt('1457');
  print(out);

}
