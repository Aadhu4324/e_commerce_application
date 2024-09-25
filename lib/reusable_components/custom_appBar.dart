import 'package:e_commerce_application/screens/screen_all_proucts.dart';
import 'package:e_commerce_application/screens/screen_cart.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ScreenAllProucts(),
              )),
          icon: const Icon(Icons.grid_view_rounded),
          style: IconButton.styleFrom(
              backgroundColor: const Color.fromARGB(26, 80, 79, 79)),
        ),
        IconButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ScreenCart(),
              )),
          icon: Icon(Icons.notifications),
          style: IconButton.styleFrom(
              backgroundColor: Color.fromARGB(26, 80, 79, 79)),
        ),
      ],
    );
  }
}
