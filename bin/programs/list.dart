void main() {
  {
    List<int> numbers = [1, 2, 3, 4];
    int out = 0;
    for (int i = 0; i < numbers.length; i++) {
      print(numbers[i]);
      int power = 1;
      for (int j = 0; j < i; j++) {
        power = power * 10;
        print(power);
      }
      out = out + numbers[i] * power;
    }
    print(out);
  }

  print('---------------------------------');

  {
    List<int> numbers = [1, 2, 3, 4];
    int out = 0;
    for (int i = 0; i < numbers.length; i++) {
      print(numbers[i]);
      int power = 1;
      for (int j = 0; j < numbers.length -(i + 1); j++) {
        power = power * 10;
        print(power);
      }
      out = out + numbers[i] * power;
    }
    print(out);
  }

}
