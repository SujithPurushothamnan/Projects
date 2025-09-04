import 'package:flutter/foundation.dart';

class CartProvider extends ChangeNotifier {
  final List<String> _cartItems = [];

  List<String> get cartItems => _cartItems;

  int get cartCount => _cartItems.length;

  void addItem(String item) {
    _cartItems.add(item);
    notifyListeners();
  }

  void removeItem(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
}
