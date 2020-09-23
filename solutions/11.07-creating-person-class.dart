class Person {
  Person({
    required this.name,
    required this.age,
    required this.height,
  });
  final String name;
  final int age;
  final double height;

  void printDescription() {
    print("My name is $name. I'm $age years old, I'm $height meters tall.");
  }
}

void main() {
  final p1 = Person(name: 'Andrea', age: 36, height: 1.84);
  final p2 = Person(name: 'Lucy', age: 44, height: 1.76);
  p1.printDescription();
  p2.printDescription();
}
