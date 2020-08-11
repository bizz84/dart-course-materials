## Exercise: Simple Calculator

Given the following (incomplete) program:

```dart
enum Operation { plus, minus, multiply, divide }

void main() {
  const a = 4;
  const b = 2;
  const op = Operation.plus;
  // TODO: implement calculator
}
```

Use a switch statement to add the remaining code so that the program produces the following output using the given variables:

```
4 + 2 = 6
```

Make sure that the program still works as the inputs change:

```
4 - 2 = 2
6 * 2 = 12
6 / 3 = 2
```