import 'package:e_commerce_application/products.dart';
import 'package:flutter/material.dart';

class CartFavouriteServices with ChangeNotifier {
  List<Products> _favList = [];
  List<Products> get favList => _favList;
  bool _isExist = false;
  bool get isExist => _isExist;

  ischeck(Products product) {
    if (_favList.contains(product)) {
      _favList.remove(product);
      _isExist = false;
      notifyListeners();
    } else {
      _favList.add(product);
      _isExist = true;
      notifyListeners();
    }
  }
}
