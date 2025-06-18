class Book{
  String name;
  String author;
  int year;

  Book(this.name,this.author,this.year);

  void display(){
    print("Book $name,$author,$year");
  }
}

void main(){
  List<Book> book= [Book("GF", "ME", 1989),
  Book("BF", "YOU", 1980)];

  for( var books in book){
    books.display();
  }
}