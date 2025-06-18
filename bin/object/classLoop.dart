class Animal {
  String name;
  Animal(this.name);

  void speak() {
    print(" its something nice");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  void speak() {
    print(" bow bow");
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  void speak() {
    print(" meew meaw");
  }
}

void main(){
  List<Animal> zoo= [
    Dog("name_x"),
    Cat("name_y"),
    Dog("name_p"),
    Cat("name_q")
  ];
  for(Animal animal in zoo ){
    animal.speak();

  }

}