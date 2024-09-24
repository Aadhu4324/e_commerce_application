import 'package:e_commerce_application/products.dart';
import 'package:e_commerce_application/screens/screen_view.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Products product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ScreenView(product: product),
      )),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(product.title),
              SizedBox(
                height: 10,
              ),
              Text(
                "₹ ${product.price}",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
