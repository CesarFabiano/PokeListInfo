import 'package:flutter/material.dart';

class Pill extends StatelessWidget {
  final Color color;
  final String text;

  Pill(this.color, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 3,
      ),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        this.text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
