int stringToNumber(String str) {
  // your code here
  int input=int.parse(str);
  return input;
}

void main(){
 int output= stringToNumber("123");
 print(output);
}