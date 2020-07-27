void main() {
  // which variables should be const, final, var?
  const text = 'I like pizza';
  const topping = 'with tomatoes';
  const favourite = '$text $topping';
  String newText = favourite.replaceAll('pizza', 'pasta');
  const newFavourite = 'Now I like curry';
  print(newText);
}
