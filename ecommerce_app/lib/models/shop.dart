import 'package:flutter/material.dart';

import 'product.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: 'Product 1',
      description: 'Description 1',
      imagePath: 'lib/assets/images/product1.png',
      price: 99.99,
    ),
    Product(
      name: 'Product 2',
      description: 'Description 2',
      imagePath: 'lib/assets/images/product2.png',
      price: 99.99,
    ),
    Product(
      name: 'Product 3',
      description: 'Description 3',
      imagePath: 'lib/assets/images/product3.png',
      price: 99.99,
    ),
    Product(
      name: 'Product 4',
      description: 'Description 4',
      imagePath: 'lib/assets/images/product4.png',
      price: 99.99,
    ),
    Product(
      name: 'Product 5',
      description: 'Description 5',
      imagePath: 'lib/assets/images/product5.png',
      price: 99.99,
    ),
  ];

  final List<Product> _cart = [];

  // getters
  List<Product> get shop => _shop;
  List<Product> get cart => _cart;

  // add product to cart
  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  // remove product from cart
  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
}
