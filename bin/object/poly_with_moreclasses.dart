class Furniture {
  int legs;
  int height;
  int length;
  int width;
  String color;
  double price;
  String material;
  String brand;

  Furniture(
      this.legs,
      this.height,
      this.length,
      this.width,
      this.color,
      this.price,
      this.material,
      this.brand,
      );

  void printDetails() {
    int volume = width * length * height;
    print("Furniture:");
    print("  Legs: $legs, Area: $volume");
    print("  Color: $color, Price: \$${price.toStringAsFixed(2)}");
    print("  Material: $material, Brand: $brand\n");
  }
}

class Chair extends Furniture {
  String design;

  Chair(
      this.design,
      int legs,
      int height,
      int length,
      int width,
      String color,
      double price,
      String material,
      String brand,
      ) : super(legs, height, length, width, color, price, material, brand);

  @override
  void printDetails() {
    int volume = width * length * height;
    print("Chair:");
    print("  Design: $design");
    print("  Legs: $legs, Area: $volume");
    print("  Color: $color, Price: \$${price.toStringAsFixed(2)}");
    print("  Material: $material, Brand: $brand\n");
  }
}

class Table extends Furniture {
  int drawers;

  Table(
      this.drawers,
      int legs,
      int height,
      int length,
      int width,
      String color,
      double price,
      String material,
      String brand,
      ) : super(legs, height, length, width, color, price, material, brand);

  @override
  void printDetails() {
    int volume = width * length * height;
    print("Table:");
    print("  Drawers: $drawers");
    print("  Legs: $legs, Area: $volume");
    print("  Color: $color, Price: \$${price.toStringAsFixed(2)}");
    print("  Material: $material, Brand: $brand\n");
  }
}

class Sofa extends Furniture {
  int seats;

  Sofa(
      this.seats,
      int legs,
      int height,
      int length,
      int width,
      String color,
      double price,
      String material,
      String brand,
      ) : super(legs, height, length, width, color, price, material, brand);

  @override
  void printDetails() {
    int volume = width * length * height;
    print("Sofa:");
    print("  Seats: $seats");
    print("  Legs: $legs, Area: $volume");
    print("  Color: $color, Price: \$${price.toStringAsFixed(2)}");
    print("  Material: $material, Brand: $brand\n");
  }
}

void main() {
  List<Furniture> furnitures = [
    Chair("Round Chair", 4, 2, 2, 2, "Red", 59.99, "Plastic", "IKEA"),
    Chair("Executive Chair", 5, 3, 2, 2, "Black", 149.99, "Leather", "HermanMiller"),
    Table(3, 4, 3, 5, 3, "Brown", 199.99, "Wood", "UrbanLadder"),
    Sofa(3, 6, 4, 7, 3, "Grey", 499.99, "Fabric", "Ashley"),
    Furniture(3, 2, 4, 2, "White", 79.99, "Metal", "Generic"),
  ];

  for (Furniture furniture in furnitures) {
    furniture.printDetails();
  }
}
