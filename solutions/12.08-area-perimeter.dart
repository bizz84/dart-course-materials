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
  double get perimeter => side * 4;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  final Shape square = Square(10);
  printArea(square);
  final Shape circle = Circle(5);
  printArea(circle);

  final shapes = [
    Square(2),
    Circle(3),
  ];
  shapes.forEach((shape) => shape.printValues());
}
