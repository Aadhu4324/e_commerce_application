import 'package:e_commerce_application/screens/screean_all_products_categories.dart';
import 'package:flutter/material.dart';

class MYSearchBar extends StatefulWidget {
  MYSearchBar({super.key});

  @override
  State<MYSearchBar> createState() => _MYSearchBarState();
}

class _MYSearchBarState extends State<MYSearchBar> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Row(
        children: [
          Expanded(
              //   child: TextFormField(
              //     controller: _controller,
              //     decoration: InputDecoration(),
              //   ),
              // ),
              child: SearchBar(
            controller: _controller,
            hintText: "Search",
          )),
          SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {
              if (_controller.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Please Fill This Field Before Search")));
              } else {
                String data = _controller.text;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ScreeanAllProductsCategories(data: data),
                    ));

                _controller.clear();
              }
            },
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
