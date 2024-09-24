import 'package:e_commerce_application/products.dart';
import 'package:flutter/material.dart';

class CartServices with ChangeNotifier {
  List<Products> _cartItems = [];
  List<Products> get cartItems => _cartItems;
  double _tottalPrice = 0.00;
  double get tottalPrice => _tottalPrice;
  addCart(Products product) {
    if (_cartItems.contains(product)) {
      Products currenitem = _cartItems.singleWhere(
        (element) => element.id == product.id,
      );
      currenitem.quantity++;
    } else {
      _cartItems.add(product);
    }
    notifyListeners();
    calculateTottalprice();
  }

  decrementcounter(Products product) {
    Products currentItem = _cartItems.singleWhere(
      (element) => element.id == product.id,
    );
    if (currentItem.quantity <= 1) {
      _cartItems.remove(currentItem);
    } else {
      currentItem.quantity--;
    }
    calculateTottalprice();
  }

  calculateTottalprice() {
    List<double> cartprices = _cartItems
        .map(
          (e) => e.quantity * e.price,
        )
        .toList();
    _tottalPrice = cartprices.fold(0.00, (_, price) => _ + price);
    notifyListeners();
  }

  removeItem(Products product) {
    product.quantity = 1;
    _cartItems.remove(product);
    notifyListeners();
  }
}
