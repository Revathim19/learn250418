class Furniture {
  String material;
  int height;
  int width;
  String color;

  Furniture(this.material, this.height, this.width, this.color);
  void shape() {
    print("Regquired shape is circle");
  }
}

class Chair extends Furniture {
  int depth;

  Chair(this.depth, String material, int height, int width, String color)
      : super(material, height, width, color);
  @override
  void shape() {
    print("Regquired shape is square");
  }
}

class Soffa extends Furniture {
  int seats;
  Soffa(this.seats, String material, int height, int width, String color)
      : super(material, height, width, color);
  @override
  void shape() {
    print("Regquired L shape");
  }
}

void main() {
  Furniture furniture = Furniture("wood", 3, 5, "black");
  furniture = Chair(2,"material1", 4, 6, "green");
  Chair chair = Chair(3,"material2", 2, 1, "blue");
  furniture.shape();

  List<Furniture> furniture1 = [
    Chair(4,"material1", 4, 6, "green"),
    Chair(5,"material2", 2, 1, "blue"),
    Furniture("wood", 3, 5, "black"),
    Soffa(4,"material3", 5, 9, "violet")
  ];

  for (Furniture myfurniture in furniture1) {
    Chair chair = myfurniture as Chair;
    chair.shape();
    print("its My chair");
  }
}
