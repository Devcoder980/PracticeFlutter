import 'package:flutter/material.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

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
            leading: const Icon(
              Icons.menu,
              color: Colors.blue,
              ),
              
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    print("Button Clicked");
                  },
                
                  icon: Icon(
                    Icons.abc,
                    color: Colors.red,
                  )),
            ], // Set th]is to true to center the title
          ),
        ),
      ),
    );
  }
}
