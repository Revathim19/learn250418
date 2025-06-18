class OldCar{
  void color()=> print("old car color is balck");
}
class NewCar extends OldCar{
  void color()=> print("new car color is white");
}
void main(){
  NewCar c1=NewCar();
  OldCar o1=OldCar();
  c1.color();
  o1.color();
}