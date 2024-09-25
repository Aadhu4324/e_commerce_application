import 'package:e_commerce_application/products.dart';
import 'package:e_commerce_application/screens/screen_view.dart';
import 'package:e_commerce_application/services/cart_favourite_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  final Products product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartFavouriteServices>(
      builder: (context, value, child) => InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ScreenView(product: product),
        )),
        child: Container(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {
                      value.ischeck(product);
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: product.isFav ? Colors.red : Colors.black,
                    )),
              ),
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
