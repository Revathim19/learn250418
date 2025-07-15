int find(List integers) {
  // find if the list is odd or even
  bool isEven = true;
  int evenCount = 0;
  int oddCount = 0;
  for (int integer in integers) {
    if (integer % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
    if (evenCount >= 2) {
      isEven = true;
      break;
    }
    if (oddCount >= 2) {
      isEven = false;
      break;
    }
  }

  /*if (evenCount >= 2) {
    isEven = true;
  } else {
    isEven = false;
  }*/
  // isEven = evenCount >= 2;

  // find the outlier
  for (int number in integers) {
    if (isEven) {
      if (number % 2 != 0) {
        // print("it is the only odd number:$number");
        return number;
      }
    } else {
      if (number % 2 == 0) {
        // print("it is the only odd number:$number");
        return number;
      }
    }
  }

  throw Exception('invalid input');
}

void main() {
  int output = find([2, 4, 10, 12, 14, 6, 7, 8]);
  int expected = 7;
  if (output == expected) {
    print("test is working; Answer is $output");
  } else {
    print("it is not working; expected: $expected, got: $output");
  }
}
