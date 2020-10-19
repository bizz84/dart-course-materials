## Exercise: Fizz Buzz with streams

Given the following function that implements the fizz-buzz algorithm:

```dart
void fizzBuzz() {
  for (var i = 1; i <= 15; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('fizz buzz');
    } else if (i % 3 == 0) {
      print('fizz');
    } else if (i % 5 == 0) {
      print('buzz');
    } else {
      print(i);
    }
  }
}
```

Convert this to a stream generator by replacing all the `print` statements with the `yield` keyword, so that each value is added as a `String`.

To make things fun, introduce a delay of 500 milliseconds inside the for loop, using `Duration(milliseconds: 500)`.

In the main method, iterate through all the values in the stream and print them.