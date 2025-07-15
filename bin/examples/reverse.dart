void main() {
  String output = reverseWords("This is an example!");
  print(output);

  if (output == "sihT si na !elpmaxe") {
    print("It is working");
  } else {
    print("it is not working");
  }
}

String reverseWords1(String text) {
  List<String> splitData = text.split(' ');
  // print(splitData);
  List<String> joinData = [];
  for (String word in splitData) {
    // print(word);
    // print(word.codeUnits.reversed);
    String reversed = String.fromCharCodes(word.codeUnits.reversed);
    // print(reversed);
    joinData.add(reversed);
  }
  return joinData.join(" ");
}

String reverseWords(String text) {
  List<String> splitData = text.split(' ');
  // print(splitData);
  List<String> joinData = [];
  for (String word in splitData) {
    // print(word);
    // print(word.codeUnits.reversed);
    String reversed = String.fromCharCodes(word.codeUnits.reversed);
     print(reversed);
    String dataConcatnation =
        reversed[0] + " " + reversed[1] + " " + reversed[2] + " " + reversed[3];
    print(dataConcatnation);
  }
  return joinData.join(" ");
}
