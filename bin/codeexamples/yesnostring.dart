String bool_to_word(bool boolean) {
  // your code goes here
if(boolean){
  return "Yes";
} else{
  return"No";
}
}

void main(){
  String output=bool_to_word(true);
  print(output);

  String output1=bool_to_word(false);
  print(output1);
}