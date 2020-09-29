## Exercise: Restaurant ratings with classes

Given the following class:

```dart
class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  final String name;
  final String cuisine;
  final List<double> ratings;
}
```

Add some new functionality to this class so that it can be used to:

- get the total number of ratings
- calculate the average rating (use a for loop or the reduce operator)

Create new getter variables or methods depending on what you feel is most appropriate.

_NOTE: Use Dartpad with Null Safety to complete this exercise._