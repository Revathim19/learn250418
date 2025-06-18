class A{
  A(){
    print("parent class");
  }
}

class B extends A{
  B(){
    print("child class");
  }
}

void main(){
  B b=B();
}