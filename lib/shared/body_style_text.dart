import 'package:flutter/material.dart';

class BodyStyleText extends StatelessWidget {
  const BodyStyleText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 22,
          letterSpacing: 1,
          fontWeight: FontWeight.w700,
          color: Colors.white),
    );
  }
}

class AppBarStyleText extends StatelessWidget implements PreferredSizeWidget {
  const AppBarStyleText(this.text, {super.key});

  final String text;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: BodyStyleText(text),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.blue[900],
      foregroundColor: Colors.white,
    );
  }
}
