import 'package:e_commerce_application/products.dart';
import 'package:e_commerce_application/reusable_components/product_card.dart';
import 'package:e_commerce_application/screens/screen_view.dart';
import 'package:e_commerce_application/services/cart_favourite_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenAllProucts extends StatelessWidget {
  const ScreenAllProucts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Expanded(
            child: GridView.builder(
                itemCount: products.length,
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) =>
                    ProductCard(product: products[index])),
          ),
        ));
  }
}
