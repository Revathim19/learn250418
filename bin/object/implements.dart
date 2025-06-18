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

class Chair implements Furniture {
  String material;

  int height;

  int width;

  String color;

  Chair(this.material, this.height, this.width, this.color);

  void shape() {
    print("Regquired shape is square");
  }
}

class Soffa extends Furniture {
  Soffa(super.material, super.height, super.width, super.color);
}

void main() {
  Furniture furniture = Furniture("wood", 3, 5, "black");
  furniture = Chair("material1", 4, 6, "green");
  Chair chair = Chair("material2", 2, 1, "blue");
  furniture.shape();

  List<Furniture> furniture1 = [
    Chair("material1", 4, 6, "green"),
    Chair("material2", 2, 1, "blue"),
    Furniture("wood", 3, 5, "black"),
    Soffa("material3", 5, 9, "violet")
  ];

  for (Furniture myfurniture in furniture1) {
    Chair chair = myfurniture as Chair;
    chair.shape();
    print("its My chair");
  }
}
