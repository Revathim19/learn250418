List<int> countPositivesSumNegatives(List<int>? input) {
  int positiveCount = 0;
  int sum = 0;
  if (input == null || input.isEmpty) {
    return [];
  }


  for (int i = 0; i < input.length; i++) {
    if (input[i] > 0) {
      positiveCount++;
    } else if (input[i] < 0) {
      sum = sum + input[i];
    }
  }
  return [positiveCount, sum];
}

void main() {
  List<int> output = countPositivesSumNegatives(
      [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]);

  List<int> output1 = countPositivesSumNegatives([]);

  print(output);
  print(output1);
}
