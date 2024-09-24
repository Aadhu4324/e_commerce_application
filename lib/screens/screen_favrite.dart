import 'package:e_commerce_application/services/cart_favourite_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenFavrite extends StatelessWidget {
  const ScreenFavrite({super.key});

  @override
  Widget build(BuildContext context) {
    final _favouritecartServices = Provider.of<CartFavouriteServices>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Items"),
        centerTitle: true,
        backgroundColor: Colors.pink.shade300,
      ),
      body: Consumer<CartFavouriteServices>(
        builder: (context, value, child) {
          if (value.favList.isEmpty) {
            return Center(
              child: Text("No Item Availble"),
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
                              value.favList[index].image,
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
                              Text(value.favList[index].title),
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                _favouritecartServices
                                    .ischeck(value.favList[index]);
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("Removed"),
                                  backgroundColor: Colors.red,
                                ));
                              },
                              icon: Icon(Icons.delete))
                        ],
                      ),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: value.favList.length),
            );
          }
        },
      ),
    );
  }
}
