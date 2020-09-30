class Animal {
  void sleep() => print('sleep');
}

class Dog extends Animal {
  void bark() => print('bark');
}

class Cow extends Animal {
  void moo() => print('moo');
}

class CleverDog extends Dog {
  void catchBall() => print('catch');
}

void main() {
  final animal = Animal();
  animal.sleep();
  final dog = Dog();
  dog.bark();
  dog.sleep();
  final cow = Cow();
  cow.moo();
  cow.sleep();
  final cleverDog = CleverDog();
  cleverDog.catchBall();
  cleverDog.bark();
  cleverDog.sleep();
}
