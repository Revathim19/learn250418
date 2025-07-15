import "dart:core";

int getCount(String inputStr){
  var count = 0;
  var vowels = <String>["a","e","i","o","u"];
  for(int i=0;i < inputStr.length;i++){
    if(vowels.contains(inputStr[i]))
      count++;
  }
  return count;
}
void main() {
  int output = getCount("wsadcveds");

  print(output);
}