import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.grid_view_rounded),
          style: IconButton.styleFrom(
              backgroundColor: const Color.fromARGB(26, 80, 79, 79)),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications),
          style: IconButton.styleFrom(
              backgroundColor: Color.fromARGB(26, 80, 79, 79)),
        ),
      ],
    );
  }
}
