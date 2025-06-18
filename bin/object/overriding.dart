class OldCar{
  void color()=> print("old car color is balck");
}
class NewCar extends OldCar{
  @override
  void color()=> print("new car color is white");
}
void main(){
  NewCar c1=NewCar();
  OldCar o1=NewCar();
  c1.color();
  o1.color();
}