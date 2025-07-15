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
  int matchcount = 0;
  int errorcount = 0;
  for (int i = 0; i < input.length; i++) {
    if (letters.contains(input[i])) {
      matchcount++;
    } else {
      errorcount++;
    }
  }

  return "$errorcount/${s.length}";
}

void main() {
  String output = printerError("aaasxd3erdvwmq");
  print(output);
}
