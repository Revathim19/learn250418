class Furniture {
  int legs;
  int hight;
  int length;
  int width;
  String color;
  Furniture(this.legs, this.hight, this.length, this.width, this.color);

  void TotalArea() {
    int area = width * length * hight;
    print("Legs:$legs,area:$area,color:$color from the furniture");
  }
}

class Chair extends Furniture {
  String design;
  Chair(this.design) : super(4, 5, 2, 2, "green");

  void MyDesign() {
    print("it should me in $design");
  }
}

void main() {
 /* List<Furniture> furnitures = [
    Furniture(4, 3, 4, 3, "black"),
    Furniture(4, 5, 4, 3, "blue"),
    Furniture(4, 6, 6, 3, "white"),
  ];

  for (Furniture furniture in furnitures) {
    furniture.TotalArea();
  }*/

  Chair chair= Chair("Arm chair design");
  chair.MyDesign();
  chair.TotalArea();

}
