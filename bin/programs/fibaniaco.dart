import 'dart:io';

void main() {
  int n = 10;
  int prev = 0;
  int cur = 1;
  stdout.write('$prev, $cur, ');
  for (int i = 0; i <= n; i++) {
    int temp = cur;
    cur = cur + prev;
    prev = temp;
    stdout.write('$cur, ');
  }
}
