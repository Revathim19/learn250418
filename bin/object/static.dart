class Employee {
  String name;
  int age;
  static String designation = "";
  int date;
  Employee(this.name, this.age, this.date);

   void details() {
    print(
        "emplyee deatils name:$name,age:$age,designation:$designation ,date:$date");
  }
  static experience(){
     print("previous designation:$designation");
  }
}

void main() {
  Employee em = Employee("me", 20, 29041990);
  Employee.designation = "Engineer";
  em.details();
  Employee.experience();
}
