import 'package:e_commerce_application/categories.dart';
import 'package:flutter/material.dart';

class CategorieItems extends StatelessWidget {
  const CategorieItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(
                      categories[index].imagePath,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    categories[index].title,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: 20,
              ),
          itemCount: categories.length),
    );
  }
}
