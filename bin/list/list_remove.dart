void main() {
  List<String> words = [
    'hello',
    'world',
    'how',
    'are',
    'world',
    'you',
  ];
  // words.remove('world');
  words.removeAt(4);
  print(words);
}