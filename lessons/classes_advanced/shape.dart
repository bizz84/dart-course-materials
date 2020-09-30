import 'dart:math';

abstract class Shape {
  double get area;
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  //final shape = Shape();
  final Shape square = Square(10);
  printArea(square);
  final Shape circle = Circle(5);
  printArea(circle);
  final shapes = [
    Square(2),
    Circle(3),
  ];
  shapes.forEach(printArea);
}
