import 'dart:convert';
import 'dart:io';

class Student {
  Student name;
  int age;
  int standard;
  List<Score> score;
  Student(this.name, this.age, this.standard, this.score);
}

class Score {
  int physics;
  int maths;
  int chemistry;
  String grade;
  Score(this.physics, this.maths, this.chemistry, this.grade);
}

void main() {
  for (;;) {
    print("Enter name:");
    String name = stdin.readLineSync()!;

    print("Enter age");

    int age = int.parse(stdin.readLineSync()!);
    if (age <= 5) {
      break;
    }

    print("Enter standard:");
    int standard = int.parse(stdin.readLineSync()!);

    print("Enter physics score:");
    int physics = int.parse(stdin.readLineSync()!);

    print("Enter maths score:");
    int maths = int.parse(stdin.readLineSync()!);

    print("Enter chemistry score:");
    int chemistry = int.parse(stdin.readLineSync()!);

    print("Enter grade:");
    String grade = stdin.readLineSync()!;

    Map students = {
      "name": name,
      "age": age,
      "standard": standard,
      "score": [physics, maths, chemistry, grade]
    };

    String studentjson = jsonEncode(students);

    print("students details $studentjson");

  }
}
