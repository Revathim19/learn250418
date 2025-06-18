Future<String> receiveMsg() {
  Future<String> msg = Future.delayed(Duration(seconds: 10), () {
    return "I LOVE U";
  });
  return msg;
}

Sendmsg() async {
  String reply = await receiveMsg();
  print('My message is $reply');
}

void main() {
  print('Say the word');

  Sendmsg();
  print('____________');
}
