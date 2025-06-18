import 'dart:io';

class Student{
  String name;
  int age;
  int standard;
  Student(this.name,this.age,this.standard);

  String toString() {
    return 'name: $name, age:$age, standard:$standard';
  }

}

void main(){
  List<Student> students=[];
  File file=File('studentslist.txt');
  List<String> data=file.readAsLinesSync();

  for(String studentsdata in data){
    List<String> mystudents= studentsdata.split(",");

    Student student=Student(mystudents[0], int.parse(mystudents[1]), int.parse(mystudents[2]));
    students.add(student);
    print(students);

  }

}