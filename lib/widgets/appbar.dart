import 'package:flutter/material.dart';

class FixedAppBar extends StatelessWidget implements PreferredSizeWidget{
  final Text title;
  const FixedAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: title,
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shadowColor: Colors.grey,
        scrolledUnderElevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
