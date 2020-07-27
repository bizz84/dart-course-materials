void main() {
  const a = {1, 3};
  const b = {3, 5};
  final c = a.union(b).difference(a.intersection(b));
  print(c);
  var sum = 0;
  for (var value in c) {
    sum += value;
  }
  print(sum);
}
