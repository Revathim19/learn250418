String disemvowel(String str) {
  List<String> vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"];
  List<String> input = str.split("");
  print(input);
  List<String> output = [];

  for (String character in input) {
    print(character);
    // TODO

  }
  return output.join("");
}

void main() {
  String output = disemvowel("This is Revathi");
  if (output == "Ths s Rvth") {
    print("test is passed");
  } else {
    print("test is failes, wrong output <$output>");
  }
  print(output);
}
