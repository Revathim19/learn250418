Future<int> numbers() async {
  int number = 10;
  int out = 0;
  await Future.delayed(Duration(seconds: 5), () {
    for (int i = 1; i < number; i++) {
      out = out + i;
    }
  });
  return out;
}

void main() async {
  int mynumber = await numbers();
  print(mynumber);
}
