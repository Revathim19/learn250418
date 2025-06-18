class Furniture {
  int legs;
  int height;
  int length;
  int width;
  String color;
  Furniture(this.legs, this.height, this.length, this.width, this.color);

  void printVolume() {
    int volume = width * length * height;
    print("Legs:$legs,area:$volume,color:$color from the furniture");
  }
}

class Chair extends Furniture {
  String design;

  Chair(this.design, int legs, int height, int length, int width, String color)
      : super(legs, height, length, width, "color");

  void MyDesign() {
    print("it should me in $design");
  }

  @override
  void printVolume() {
    int volume = width * length * height;
    print(
        "Legs:$legs,area:$volume,color:$color and design:$design of the Chair");
  }
}

void main() {
  List<Furniture> furnitures = [
    Chair("round chair",4,3,2,2,"Black"),
    Chair("arm chair",4,2,5,4,"red"),
    Chair("foldable chair",4,3,4,5,"Blue"),
  ];

  for (Furniture furniture in furnitures) {
    furniture.printVolume();
  }
}
