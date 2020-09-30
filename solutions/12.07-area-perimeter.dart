import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;

  void printValues() {
    print('area: $area, perimeter: $perimeter');
  }
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;

  @override
  double get perimeter => 4 * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;
}

void main() {
  final shapes = [
    Square(3),
    Circle(4),
  ];
  shapes.forEach((shape) => shape.printValues());
}
