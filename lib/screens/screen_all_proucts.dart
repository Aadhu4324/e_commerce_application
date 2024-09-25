import 'package:e_commerce_application/products.dart';
import 'package:e_commerce_application/reusable_components/product_card.dart';

import 'package:flutter/material.dart';

class ScreenAllProucts extends StatelessWidget {
  const ScreenAllProucts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("All Products"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
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
