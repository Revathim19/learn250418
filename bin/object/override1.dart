class Animal {
  Animal();
  void speak() {
    print("bow bow");
  }
}

class Cat extends Animal {
  Cat();
 // @override
  void speak() {
    print("meaw");
  }
}



void main() {
// Animal a1 = Animal();
 Cat c1 = Cat();
// a1.speak();
  c1.speak();
}
