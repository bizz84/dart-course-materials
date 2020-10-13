mixin Mixin1 {
  int foo = 1;
}

mixin Mixin2 {
  int foo = 2;
}

class Foo with Mixin1, Mixin2 {
  void printFoo() {
    print(foo);
  }
}

void main() {
  final foo = Foo();
  foo.printFoo();
}
