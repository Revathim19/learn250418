enum Status {active,inactive,suspend,closed}

class Application{
  String name;
  Status status;

  Application(this.name,this.status);

  void display(){
    print(";$name,ststus:$status");
  }
}

void main(){
  Application app = Application("SXG", Status.inactive);
  app.display();

}