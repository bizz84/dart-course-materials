## Exercise: Restaurant Ratings

Given the following list of restaurants:

```dart
void main() {
  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];
}
```

Write a program that calculates the average rating score for each restaurant, and adds it as an `'avgRating': value` key-value pair for that restaurant.

Use the following code as a starting point:

```dart
  for (var restaurant in restaurants) {
    final ratings = restaurant['ratings'] as List<double>;
    // TODO: calculate average rating
    restaurant['avgRating'] = /* avg rating here */;
  }
```