class Appartment{
  int floors;
  String name;
  int families;
Appartment(this.floors,this.name,this.families);
void details(){
  print("Appartment deatils $floors,$name,$families");
}

}

void main(){
  Appartment appartment=Appartment(4, "name_x", 3);
appartment.details();
}