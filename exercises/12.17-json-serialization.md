## Exercise: JSON serialization

Given the following (incomplete) program:

```dart
class Person {
  Person({required this.name, required this.age});
  final String name;
  final int age;
  // TODO: Implement fromJson
  // TODO: Implement toJson
}

void main() {
  final person = Person.fromJson({
    'name': 'Andrea',
    'age': 36,
  });
  final json = person.toJson();
  print(json);
}
```

- Implement a factory `fromJson` constructor so that it's possible to create `Person` instances from a map of key-value pairs. This should handle the case where the `name` and `age` values are missing or have the wrong type.
- Implement a `toJson()` method so that a `Person` instance can be converted back to a `Map<String, Object>`.
