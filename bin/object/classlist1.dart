class Student{

  List<int> marks;
  String name;
  Student(this.marks,this.name);

  double get average=> marks.reduce((a,b)=>(a+b))/marks.length;

   String getGrade(){
     if(average>90){
       return "A";
     }
       else if(average>70){
         return "B";
       }
   else if(average>60){
     return "C";
     }
   else {
       return "D"; // Or F, or whatever grading logic you prefer
     }

     }
  void display() {
    print('$name: Average = $average grade=$getGrade()');
  }
   }

void main(){

  List<Student> students=[Student([70,90], "Xxxxx"),
    Student([60,40], "Yyyyyy"),
    Student([80,90], "Ppppp"),
    Student([75,65], "Qqqqq"),
    Student([63,76], "Rrrr" )];
    for(Student student in students){
      student.display();

    }

}

