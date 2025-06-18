import 'dart:ffi';

class Person {
  String name;
  int age;
  Person(this.name, this.age);
}

class Employee extends Person {
  String post;
  double salary;

  Employee(this.post, this.salary) : super("name",10);
  void details(){
    print("name:$name,age:$age,post:$post,salary:$salary");
  }
}
void main(){
  Employee em= Employee("emgineer", 200.0);
  em.details();
}

