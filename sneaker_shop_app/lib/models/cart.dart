import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Dunk Low Grey',
      image: 'lib/assets/dunk_low_grey.png',
      price: 900,
      description: 'dunk low foda grey',
    ),
    Shoe(
      name: 'Dunk Low Bright Cactus',
      image: 'lib/assets/dunk_low_bright_cactus.png',
      price: 900,
      description: 'dunk low foda bright cactus',
    ),
     Shoe(
      name: 'Dunk Low Aster Pink',
      image: 'lib/assets/dunk_low_aster_pink.png',
      price: 900,
      description: 'dunk low foda aster pink',
    ),
    Shoe(
      name: 'Air Jordan 4 Wet Cement',
      image: 'lib/assets/aj4_wet_cement.png',
      price: 1000,
      description: 'air jordan 4 foda wet cement',
    ),
    Shoe(
      name: 'Air Jordan 4 Driveway',
      image: 'lib/assets/aj4_driveway_grey.png',
      price: 1000,
      description: 'air jordan 4 foda driveway grey',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
