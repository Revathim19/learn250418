import 'dart:convert';

class Student {
  String name;
  int age;
  int standard;

  Address address;

  Student(this.name, this.age, this.standard, this.address);

  Map<String, dynamic> toJson() => {
        "name": name,
        "age": age,
        "standard": standard,
        "address": address,
      };
}

class Address {
  String street;
  int doorNo;
  int pincode;
  Address(this.street, this.doorNo, this.pincode);

  Map<String, dynamic> toJson() {
    return {
      "street": street,
      "doorNo": doorNo,
      "pincode": pincode,
    };
  }
}

void main() {
  List<Student> students = [
    Student("Revati", 34, 15, Address("street1", 34, 456)),
    Student("Ser", 35, 16, Address("street2", 23, 234)),
    Student("Sema", 33, 14, Address("street3", 41, 256))
  ];

  String jsonlist = jsonEncode(students);
  print(jsonlist);
}
