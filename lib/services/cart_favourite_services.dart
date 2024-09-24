import 'package:e_commerce_application/products.dart';
import 'package:flutter/material.dart';

class CartFavouriteServices with ChangeNotifier {
  List<Products> _favList = [];
  List<Products> get favList => _favList;

  ischeck(Products product) {
    if (_favList.contains(product)) {
      _favList.remove(product);
      product.isFav = false;
    } else {
      _favList.add(product);
      product.isFav = true;
    }
    notifyListeners();
  }
}
