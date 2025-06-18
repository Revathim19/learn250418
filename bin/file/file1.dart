import 'dart:io';

class Student {
  String name;
  int age;
  int standard;

  Student(this.name, this.age, this.standard);

 /* String toString() {
    return '$name,$age,$standard';
  }*/

void write(IOSink sink) {
    sink.writeln(name + "," + age.toString() + "," + standard.toString());
  }
}

void main() {
  List<Student> students=[];
  File file = File("studentslist.txt");
  IOSink sink = file.openWrite();

  for (;;) {
    print('Enter the name:');
    String name = stdin.readLineSync()!;

    if (name == "") {
      break;
    }

    print("Enter the age:");
    int age = int.parse(stdin.readLineSync()!);

    print("Enter the class:");
    int standard = int.parse(stdin.readLineSync()!);

    Student student = Student(name, age, standard);
    print(student);
  //  sink.writeln(student);
    student.write(sink);

    students.add(student);
    print(students);
  }
}
