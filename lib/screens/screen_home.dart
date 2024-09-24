import 'package:e_commerce_application/reusable_components/product_card.dart';
import 'package:e_commerce_application/products.dart';
import 'package:e_commerce_application/reusable_components/categorie_items.dart';
import 'package:e_commerce_application/reusable_components/custom_appBar.dart';
import 'package:e_commerce_application/reusable_components/search_bar.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomAppbar(),
              const SizedBox(
                height: 20,
              ),
              MYSearchBar(),
              const SizedBox(
                height: 20,
              ),
              CategorieItems(),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) =>
                    ProductCard(product: products[index]),
                shrinkWrap: true,
                itemCount: products.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}
