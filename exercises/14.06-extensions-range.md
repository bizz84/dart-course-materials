## Exercise: Range Extension

Given the following (incomplete) program:

```dart
void main() {
  for (var i in 1.rangeTo(5)) {
    print(i);
  }
  // output: [1, 2, 3, 4, 5]
}
```

Create an extension on `int` that implements a `rangeTo` method.

This method should take an `int other` argument, and use it to return a list containing all the integer values inside the range in increasing order.

If the `other` argument is less than the initial value, the method should return an empty list.