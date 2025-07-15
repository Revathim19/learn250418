String disemvowel1(String str) {
  List<String> vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"];
  List<String> input = str.split("");
  print(input);
  List<String> output = [];

  for (String character in input) {
    if (!vowels.contains(character)) {
      output.add(character);
    }
  }
  return output.join("");
}

String disemvowel2(String str) {
  List<String> vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"];
  List<String> input = str.split("");
  print(input);
  String output = "";
  for (String character in input) {
    if (!vowels.contains(character)) {
      output = output + character;
    }
  }
  return output;
}

String disemvowel(String str) {
  List<String> vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"];
  List<String> input = str.split("");
  print(input);
  StringBuffer sb = StringBuffer();
  for (String character in input) {
    if (!vowels.contains(character)) {
      sb.write(character);
    }
  }
  return sb.toString();
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
