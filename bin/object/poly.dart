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
  Chair(this.design) : super(4, 5, 2, 2, "green");

  void MyDesign() {
    print("it should me in $design");
  }
  @override
  void printVolume() {
    int volume = width * length * height;
    print("Legs:$legs,area:$volume,color:$color and design:$design of the Chair");
  }
}

void main() {
   List<Furniture> furnitures = [
    Chair("round chair"),
     Chair("arm chair"),
     Chair("foldable chair"),
  ];

  for (Furniture furniture in furnitures) {
    furniture.printVolume();
  }

}
