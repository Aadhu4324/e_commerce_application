import 'package:e_commerce_application/products.dart';
import 'package:e_commerce_application/reusable_components/product_card.dart';
import 'package:flutter/material.dart';

class ScreeanAllProductsCategories extends StatefulWidget {
  final String data;
  ScreeanAllProductsCategories({super.key, required this.data});

  @override
  State<ScreeanAllProductsCategories> createState() =>
      _ScreeanAllProductsCategoriesState();
}

class _ScreeanAllProductsCategoriesState
    extends State<ScreeanAllProductsCategories> {
  List list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    list = products
        .where(
          (element) => element.categories == widget.data,
        )
        .toList();
    print(list.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(widget.data),
          centerTitle: true,
        ),
        body: list.isNotEmpty
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return ProductCard(product: list[index]);
                },
                itemCount: list.length,
              )
            : Center(
                child: Text("No Product Available"),
              ));
  }
}
