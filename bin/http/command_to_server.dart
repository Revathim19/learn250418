import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

Future<void> main() async {
  /*List<String> todo = [
    "washing cloths",
    "brush teeth",
    "cleaning house",
    "bathing"
  ];*/

  for (;;) {
    print('Enter Command:');
    String command = stdin.readLineSync()!;
    if (command == "show all") {
      Uri uri = Uri.parse('http://localhost:9000/api/1.0/todolist');
      Response response = await get(uri);
      String body = response.body;
      print(body);
      int status = response.statusCode;
      print(status);
    } else if (command.startsWith("add ")) {
      String task = command.substring(4);
      Response response = await post(
          Uri.parse('http://localhost:9000/api/1.0/todolist'),
          body: jsonEncode({'task': task}));
      print(response.statusCode.toString() + response.body);
    } else if (command.startsWith("show ")) {
      int id = int.parse(command.substring(5));

      Response response =
          await get(Uri.parse('http://localhost:9000/api/1.0/todolist/${id}'));

     Map jsomdata=jsonDecode(response.body);
     print(jsomdata["task"]);
          // print(response.body);
      print(response.statusCode.toString() + response.body);
      
    } else if (command.startsWith("delete ")) {
      int deleteId = int.parse(command.substring(7));
      Response response = await delete(
          Uri.parse('http://localhost:9000/api/1.0/todolist/${deleteId}'));
      print(response.body);
      print(response.statusCode.toString() + response.body);
    }
  }
}
