void main() {
  List<int> number = [5, 2, 10, 4, 0, 6, 2, 9];
  int value = number[0];
    for (int i = 0; i < number.length; i++) {
    if (value < number[i]) {
      value = number[i];
    }
  }
  print('The largest number $value');

}
