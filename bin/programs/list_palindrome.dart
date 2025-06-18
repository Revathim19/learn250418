bool isPalindrome(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    int reverse=list.length-i-1;
    if (list[i] == list[reverse]) {
      print('List is palindrome list[i],$reverse');
    } else {
      print('list is not palindrome$list,$reverse');
    }
  }
  return false;

}

void main(){
  List<int> list=[0,0,3,3,2,1];
  isPalindrome(list);
}