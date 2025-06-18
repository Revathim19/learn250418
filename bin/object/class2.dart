class Furniture{
  int legs;
  int hight;
  int length;
  int width;
  String color;
  Furniture(this.legs,this.hight,this.length,this.width,this.color);

  void totalarea(){
    int area= width*length*hight;
    print("Legs:$legs,area:$area,color:$color");
  }

}

void main(){
  List<Furniture> furnitures= [Furniture(4, 3, 4 , 3, "black"),
  Furniture(4, 5, 4 , 3, "blue"),
  Furniture(4, 6, 6 , 3, "white"),
  ];

  for(Furniture furniture in furnitures){
    furniture.totalarea();
  }
}