class Person{
  String name;
  int age;
  Person(this.name,this.age);
  Person.info(this.name,this.age);

  void details(){
    print("My name is $name and age is $age");
  }
}

void main(){
  Person person=Person("Revati", 36);
  Person person1=Person.info("Teja", 36);

  person.details();
  person1.details();
}