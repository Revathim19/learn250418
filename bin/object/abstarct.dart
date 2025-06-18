abstract class Furniture {
  int height;
  int width;
  int length;
  String color;

  Furniture(this.width, this.length, this.height, this.color);

  void Mydesign();
  //{
  //print("i love new designs");
  // }

  void TotalVolume() {
    int volume = width * length * height;
    print("volume:$volume,color:$color from the furniture");
  }
}

class Chair extends Furniture {
  String design;
  Chair(this.design, int height, int width, int length, String color)
      : super(height, width, length, color);
  @override
  void Mydesign() {
    print("i love new chair designs");
  }

  @override
  void TotalVolume() {
    int volume = width * length * height;
    print("volume:$volume,color:$color, design:$design in the chair");
  }
}

void main() {
  List<Furniture> furnitures = [
    Chair("ssss", 4, 4, 3, "Black"),
    Chair("yyyyy", 5, 3, 2, "White")
  ];

  for (Furniture furniture in furnitures) {
    furniture.TotalVolume();
    furniture.Mydesign();
  }
}
