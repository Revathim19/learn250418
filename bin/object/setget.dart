class Furniture {
  int legs;
  int height;
  int length;
  int width;
  String color;
  Furniture(this.legs, this.height, this.length, this.width, this.color);

  set Height(int height) {
    this.height = height;
  }

  set Length(int length) {
    this.length = length;
  }

  set Width(int width) {
    this.width = width;
  }

  int get getarea  => width * length * height;


  void Areadata() {
    print("Legs:$legs,area:$getarea,color:$color");
  }
}

void main() {
  List<Furniture> furnitures = [
    Furniture(4, 3, 4, 3, "black"),
    Furniture(4, 5, 4, 3, "blue"),
    Furniture(4, 6, 6, 3, "white"),
  ];

  for (Furniture furniture in furnitures) {
    furniture.Areadata();
  }
}
