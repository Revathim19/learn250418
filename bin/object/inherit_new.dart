class Flyer {
  void fly() {
    print("it is flying");
  }
}
/*
class Swimmer {
  void swim() {
    print("it is Swimmimg");

  }
}*/

class Duck extends Flyer {
  //@override
  void fly() {
    print('Duck flying');
  }

 // @override
  void swim() {
    print('Duck swimming');
  }
}

void main() {
  Flyer flyer=Flyer();
  flyer.fly();
  flyer=Duck();

  Duck d = Duck();
  d.fly();   // Duck flying
  d.swim();  // Duck swimming
}
