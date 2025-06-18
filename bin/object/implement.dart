class Flyer {
  void fly() {
    print("it is flying");
  }
}

class Swimmer {
  void swim() {
    print("it is Swimmimg");

  }
}

class Duck implements Flyer, Swimmer {
  @override
  void fly() {
    print('Duck flying');
  }

  @override
  void swim() {
    print('Duck swimming');
  }
}

void main() {
  Flyer flyer=Flyer();
  flyer.fly();
  Duck d = Duck();
  d.fly();   // Duck flying
  d.swim();  // Duck swimming
}
