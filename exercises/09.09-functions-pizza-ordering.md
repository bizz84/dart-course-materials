## Exercise: Pizza ordering with functions

The following program can be used to calculate the total price when ordering pizza:

```dart
void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  const order = ['margherita', 'pepperoni', 'pineapple'];
  var total = 0.0;
  for (var item in order) {
    final price = pizzaPrices[item];
    if (price != null) {
      total += price;
    }
  }
  print('Total: \$$total');
}
```

Modify this program so that the total calculation can be moved to a separate function that can be called multiple times with different orders.

This function should take the order as an argument, and return the total.

