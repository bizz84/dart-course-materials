import 'product.dart';

class Item {
  Item({required this.product, this.quantity = 1}) : _totalNum = quantity;
  final Product product;
  final int quantity;
  int _totalNum;

  double get price => _totalNum * product.price;

  void addProduct() {
    _totalNum += 1;
  }

  @override
  String toString() => '$_totalNum x ${product.name}: \$$price';
}
