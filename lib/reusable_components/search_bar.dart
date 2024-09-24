import 'package:flutter/material.dart';

class MYSearchBar extends StatelessWidget {
  const MYSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Row(
        children: [
          Expanded(
              child: SearchBar(
            hintText: "Search",
          )),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_outlined,
              size: 30,
            ),
            style: IconButton.styleFrom(
                backgroundColor: const Color.fromARGB(26, 80, 79, 79)),
          )
        ],
      ),
    );
  }
}
