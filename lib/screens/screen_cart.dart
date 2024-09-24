import 'package:e_commerce_application/services/cart_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenCart extends StatefulWidget {
  const ScreenCart({super.key});

  @override
  State<ScreenCart> createState() => _ScreenCartState();
}

class _ScreenCartState extends State<ScreenCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CartServices>(
        builder: (context, value, child) {
          if (value.cartItems.isEmpty) {
            return Center(
              child: Text("Your Cart Is Empty"),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.separated(
                  itemBuilder: (context, index) => Row(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              value.cartItems[index].image,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(value.cartItems[index].title),
                              Row(
                                children: [
                                  Text("Quantity"),
                                  IconButton(
                                      onPressed: () {
                                        value.decrementcounter(
                                            value.cartItems[index]);
                                      },
                                      icon: Icon(Icons.remove)),
                                  Text(value.cartItems[index].quantity
                                      .toString()),
                                  IconButton(
                                      onPressed: () {
                                        value.addCart(value.cartItems[index]);
                                      },
                                      icon: Icon(Icons.add))
                                ],
                              ),
                              Text(
                                  'Price : ${value.cartItems[index].price * value.cartItems[index].quantity}')
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                value.removeItem(value.cartItems[index]);
                              },
                              icon: Icon(Icons.delete))
                        ],
                      ),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: value.cartItems.length),
            );
          }
        },
      ),
      floatingActionButton:
          Consumer<CartServices>(builder: (context, data, child) {
        return Container(
          margin: EdgeInsets.only(bottom: 20, left: 35),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total -",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text(
                "₹ : ${data.tottalPrice}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        );
      }),
    );
  }
}
