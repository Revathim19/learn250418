String repeatString(int n, String s) {
  String input = '';

  if (n > 0) {
    return input = s*n;
  }

  return input;
}

void main() {
  String output = repeatString(2, "Hi");
  print(output); // Output: HiHi
}
