int getCount(String inputStr) {
  List<String> input = inputStr.split('');
 // print(input);
  int count=0;
 for(String data in input){
   if((data=="a")|| (data=="e") ||(data=="i") || (data=="o") || (data=="u")) {
     count++;
     //print("it is a vowel");
   }
 }
  //your code here
  return count;
}

void main() {
  int output = getCount("RevathiMannem");
  int output1 = getCount("Ravi Teja Gudapati");

  print(output);
}
