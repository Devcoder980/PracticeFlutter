import 'dart:convert';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

class SearchProduct extends StatefulWidget {
  const SearchProduct({Key? key}) : super(key: key);

  @override
  _SearchProductState createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  String name = '';
  String category = '';
  String color = '';
  String size = '';
  String availability = 'Available';
  List<dynamic> product = [];

  get http => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Input field
        TextField(
          decoration: InputDecoration(
            hintText: 'Search product...',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            setState(() {
              name = value;
            });
            handleSearch();
          },
        ),
        // Four dropdown menus
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Add DropdownButton widgets for category, color, size, and availability
            // For example:
            // DropdownButton<String>(
            //   value: category,
            //   onChanged: (value) {
            //     setState(() {
            //       category = value!;
            //     });
            //     handleSearch();
            //   },
            //   items: <String>['', 'Tops', 'Bottoms', 'Dresses']
            //       .map((String value) {
            //     return DropdownMenuItem<String>(
            //       value: value,
            //       child: Text(value),
            //     );
            //   }).toList(),
            // ),
          ],
        ),
        // Product list
        Expanded(
          child: ListView.builder(
            itemCount: product.length,
            itemBuilder: (context, index) {
              var cloth = product[index];
              return ListTile(
                title: Text(cloth['name']),
                subtitle: Text(cloth['description']),
                // Add more details or actions as needed
              );
            },
          ),
        ),
      ],
    );
  }

  Future<void> handleSearch() async {
    try {
      final response =
          await http.get(Uri.parse('http://localhost:5000/api/clothes/search'));

      print(response.body);
    } catch (error) {
      print('Error fetching clothes: $error');
      // Handle error
    }
  }
}
