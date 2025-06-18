Future<String> receiveMsg() async{
  String msg = await Future.delayed(Duration(seconds: 10), () {
    return "I LOVE U";
  });
  return ' my message is $msg ';
}

Sendmsg() async {
  String reply = await receiveMsg();
  print('Guess the message,$reply');
}

void main() {
  print('Say the word');

  Sendmsg();
  print('____________');
}
