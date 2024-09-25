import 'package:e_commerce_application/products.dart';
import 'package:e_commerce_application/services/cart_favourite_services.dart';
import 'package:e_commerce_application/services/cart_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenView extends StatefulWidget {
  final Products product;
  const ScreenView({super.key, required this.product});

  @override
  State<ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  @override
  Widget build(BuildContext context) {
    final _cartServices = Provider.of<CartServices>(context);
    final _favouriteServices = Provider.of<CartFavouriteServices>(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                _favouriteServices.ischeck(widget.product);
              },
              icon: widget.product.isFav
                  ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.favorite_border,
                    ))
        ],
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.product.image),
                        fit: BoxFit.fill)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "₹ ${widget.product.price.toString()}",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.product.title,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.product.description,
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          _cartServices.addCart(widget.product);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            duration: Duration(seconds: 1),
            content: Text("Added"),
            backgroundColor: Colors.green,
          ));
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          width: 150,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.orange),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart,
                size: 30,
                color: Colors.white,
              ),
              Text(
                "Add To cart",
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
