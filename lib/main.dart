import 'dart:ffi';
import './screens/NewScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  final List<String> items = ["a", "b", "c"];

  MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello world",
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Welcome"),
            centerTitle: true,
            backgroundColor: Colors.orange,
            leading: IconButton(
              icon: const Icon(Icons.menu, color: Colors.blue),
              onPressed: () => {print("Icon button clicked")},
            ),

            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    print("Button Clicked");
                  },
                  icon: const Icon(
                    Icons.abc,
                    color: Colors.red,
                  )),
            ], // Set th]is to true to center the title
          ),
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
                trailing: IconButton(
                  icon: const Icon(Icons.remove_shopping_cart),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewScreen()),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
