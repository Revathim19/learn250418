Future<String > fetchorder() async {
  String order=await Future.delayed(Duration(seconds: 5) ,(){
  return "Pizza";
});
  return "i orderd  $order";

}

void main() async{
  print("wait for the order");
 String myorder= await fetchorder();
  print(myorder);
}