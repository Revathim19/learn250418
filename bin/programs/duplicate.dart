void main() {
  List<int> numbers = [1, 2, 3, 2, 1];
  Set<int> number = {};
  Set<int> duplicate = {};
  for (var num in numbers) {
    if (!number.add(num)) {
      duplicate.add(num);
    }
    print('Duplicates: $duplicate');
  }
}
