import 'dart:io';

class Student {
  String name;
  int age;
  String schoolName;

  Student(this.name, this.age, this.schoolName);

  String toString() {
    return 'name: $name, age:$age, schoolName:$schoolName';
  }
}

void main(){
  File file=File("myfile.csv");
 List<String> data =file.readAsLinesSync();

  for(String student in data){
    List<String> students=student.split(",");

Student str= Student(students[0], int.parse(students[1]), students[2]);
print(str);

  }


}