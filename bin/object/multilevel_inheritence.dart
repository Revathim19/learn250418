class Vehicle{
 void name(){
   print("name of the vehicle is car");
 }
}

class NewVehicle extends Vehicle {


  void vehiclename() {
    print("New vehicle name is Jeep");
  }
}
class MyVehicle extends NewVehicle{
   void color(){
     print("My vehicle color is Black");
   }
}

void main(){
  MyVehicle myvehicle=MyVehicle();
  NewVehicle newveh=NewVehicle();
  Vehicle veh=Vehicle();

  myvehicle.color();
  myvehicle.vehiclename();
  myvehicle.name();
  newveh.vehiclename();
  newveh.name();
  veh.name();

}