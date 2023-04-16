import 'package:flutter/material.dart';

class GloabalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GloabalAppBar({
    Key? key,
    required this.title,
    required this.appbarColor,
  }) : super(key: key);

  final String title;
  final Color appbarColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: appbarColor,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 56);
}
