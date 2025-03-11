import 'package:flutter/foundation.dart';
import 'package:ecom_task/screens/product.dart';

class CartItem {
  final Product product;
  final String size;
  final String color;
  int quantity;

  CartItem({
    required this.product,
    required this.size,
    required this.color,
    this.quantity = 1,
  });
}

class CartProvider with ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => [..._items];

  int get itemCount => _items.length;

  double get totalAmount {
    double total = 0.0;
    for (var item in _items) {
      total += item.product.price * item.quantity;
    }
    return total;
  }

  void addItem({
    required Product product,
    required String size,
    required String color,
  }) {
    // Check if the item already exists with the same product, size, and color
    final existingItemIndex = _items.indexWhere(
      (item) =>
          item.product.id == product.id &&
          item.size == size &&
          item.color == color,
    );

    if (existingItemIndex >= 0) {
      // Increment quantity if item already exists
      _items[existingItemIndex].quantity += 1;
    } else {
      // Add new item
      _items.add(
        CartItem(
          product: product,
          size: size,
          color: color,
        ),
      );
    }
    notifyListeners();
  }

  void removeItem(int index) {
    _items.removeAt(index);
    notifyListeners();
  }

  void updateQuantity(int index, int change) {
    final newQuantity = _items[index].quantity + change;
    if (newQuantity > 0) {
      _items[index].quantity = newQuantity;
      notifyListeners();
    } else if (newQuantity <= 0) {
      removeItem(index);
    }
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}