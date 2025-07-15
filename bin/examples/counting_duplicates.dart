/// Naive method
int duplicateCount1(String text) {
  List<String> data = text.split('');
  // print(data);
  int countA = 0;
  int countB = 0;
  int countC = 0;
  int countD = 0;
  int countE = 0;
  for (String character in data) {
    print(character);
    if (character == 'a') {
      countA++;
    } else if (character == 'b') {
      countB++;
    } else if (character == 'c') {
      countC++;
    } else if (character == 'd') {
      countD++;
    } else if (character == 'e') {
      countE++;
    }
  }
  print(countA);
  print(countB);
  print(countC);
  print(countD);
  print(countE);
  int duplicates = 0;

  if (countA >= 2) {
    duplicates++;
  }
  if (countB >= 2) {
    duplicates++;
  }
  if (countC >= 2) {
    duplicates++;
  }
  if (countD >= 2) {
    duplicates++;
  }
  if (countE >= 2) {
    duplicates++;
  }
  return duplicates;
}

/// List index method
int duplicateCount2(String text) {
  List<String> data = text.split('');
  // Compute counts of each unique character in the string
  List<int> counts = List.filled(36, 0);
  for (String character in data) {
    print(character);
    int codeUnit = character.codeUnits[0];
    if (codeUnit > 96 && codeUnit < 123) {
      int index = codeUnit - 97;
      counts[index]++;
    } else if (codeUnit > 47 && codeUnit < 58) {
      int index = 26 + codeUnit - 48;
      counts[index]++;
    } else if (codeUnit > 64 && codeUnit < 91) {
      int index = codeUnit - 65;
      counts[index]++;
    }
    // print('index of $character: $index');
  }
  print(counts);

  int duplicates = 0;
  // count duplicates
  for (int i = 0; i < 36; i++) {
    if (counts[i] >= 2) {
      duplicates++;
    }
  }
  return duplicates;
}

int duplicateCount(String text) {
  text = text.toLowerCase();
  Map<String, int> counts = {};
  for(String character in text.split('')) {
    int count = counts[character] ?? 0;
    count++;
    counts[character] = count;
  }
  print(counts);
  // TODO count duplicates
  return 0;
}

void main() {
  int output = duplicateCount("aAbbCcdde055");

  if (output == 5) {
    print("it is working");
  } else {
    print("it is not working");
  }
}
