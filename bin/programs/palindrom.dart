void isPalindrome(String str){
  String data= str.split('').reversed.join();
  print(data);
  if(str.toLowerCase()==data.toLowerCase()){
    print('It is palindrome');
  } else{
    print('It is not palindrome');

  }
}

void main(){
  isPalindrome("Revati");
  isPalindrome("Amma");
  print('checked the palindrome');
}