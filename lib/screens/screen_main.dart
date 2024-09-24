import 'package:e_commerce_application/screens/screen_cart.dart';
import 'package:e_commerce_application/screens/screen_favrite.dart';
import 'package:e_commerce_application/screens/screen_home.dart';
import 'package:e_commerce_application/screens/screen_profile.dart';
import 'package:flutter/material.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key});

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

List screen = [
  Scaffold(),
  ScreenFavrite(),
  ScreenHome(),
  ScreenCart(),
  ScreenProfile(),
];

class _ScreenMainState extends State<ScreenMain> {
  int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[_selectedIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _selectedIndex = 2;
            });
          },
          shape: CircleBorder(),
          child: Icon(Icons.home,
              color: _selectedIndex == 2 ? Colors.red : Colors.black),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  icon: Icon(Icons.grid_view_outlined,
                      color: _selectedIndex == 0 ? Colors.red : Colors.black)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  icon: Icon(Icons.favorite,
                      color: _selectedIndex == 1 ? Colors.red : Colors.black)),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                  icon: Icon(Icons.shopping_cart,
                      color: _selectedIndex == 3 ? Colors.red : Colors.black)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 4;
                    });
                  },
                  icon: Icon(Icons.person,
                      color: _selectedIndex == 4 ? Colors.red : Colors.black)),
            ],
          ),
        ));
  }
}
