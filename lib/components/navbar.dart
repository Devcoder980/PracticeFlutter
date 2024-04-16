import 'package:flutter/material.dart';

class MyNavBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onMenuPressed; // Callback function to handle menu press

  const MyNavBar({Key? key, required this.onMenuPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("BrideMaid"),

    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
