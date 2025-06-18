Future<int> number() async {
  int num = 10;
  int out = 0;

  await Future.delayed(Duration(seconds: 5));

  for (int i = 0; i < num; i++) {
    out = out + 1;
  }

  return out;
}

void main() async {
  print("Waiting for result...");
  int result = await number();
  print("Result: $result");
}
