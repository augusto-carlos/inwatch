import 'package:flutter/material.dart';

class Text2 extends StatelessWidget {
  final text;
  const Text2(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        fontSize: 20,
        height: 1.2,
        fontFamily: 'poppins',
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
    );
  }
}
