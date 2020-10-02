class Stack<T> {
  final List<T> _items = [];

  void push(T item) => _items.add(item);

  T pop() => _items.removeLast();
}

void main() {
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  print(stack.pop());
  print(stack.pop());
  final names = Stack<String>();
  names.push('Andrea');
  names.push('Alice');
}
