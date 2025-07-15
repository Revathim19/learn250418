String printerError(String s) {
  // your code here

  List<String> letters = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm'
  ];

  List<String> input = s.split("");
  int errorcount = 0;
  for (int i = 0; i < input.length; i++) {
    bool isValid = false;
    for (int j = 0; j < letters.length; j++) {
      if (s[i] == letters[j]) {
        isValid = true;
        break; // Stop inner loop if match is found
      }
    }

    if (!isValid) {
      errorcount++; // Count error only once per invalid character
    }
  }

  return "$errorcount/${s.length}";
}

void main() {
  String output = printerError("aaasxd3erdvwmq");
  print(output);
}
