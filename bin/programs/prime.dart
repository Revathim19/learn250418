/* import 'dart:io';
bool isPrime(int a){
  for(int i=2; i<a; i++) {
    double out=a/i;
    if(out - out.floor() == 0) {
      return false;
    }
  }
  return true;
}
void main() {
   print('Enter the number :');
  int n= int.parse(stdin.readLineSync()!);
  for(int i=1; i<n; i++) {
    bool ok = isPrime(i);
    if(ok==true) {
      print(i.toString() + ' is Prime number');
    }
*/

void main() {
  int n = 15;
  for (int i = 1; i < n; i++) {
    bool isPrime = true;
    for (int j = 2; j < i; j++) {
      double out = i / j;
      if (out - out.floor() == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      print('its a prime numner $i');
    } else {
      print('its not a prime numner $i');
    }
  }
}
