abstract class InterfaceA {
  void a();
}

abstract class InterfaceB {
  void b();
}

class AB implements InterfaceA, InterfaceB {
  @override
  void a() {
    // TODO: implement a
  }

  @override
  void b() {
    // TODO: implement b
  }
}

abstract class Base {
  void foo(); // abstract method
  void bar() => print('bar');
}

class Subclass extends Base {
  @override
  void foo() => print('foo');
}
