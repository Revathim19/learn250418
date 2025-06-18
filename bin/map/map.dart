void main() {
  Map<double, int> numbers = {
    2.9: 3,
    3.0: 3,
    4.8: 8,
  };

  print(numbers[2.9]);
  print(numbers.keys);
  print(numbers.values);

  for (int number in numbers.values) {
    print(number);
  }
  for (double value in numbers.keys) {
    int number = numbers[value]!;
    print('$value:$number');
  }
}
