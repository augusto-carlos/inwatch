import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  final text;
  const Text1(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        color: Color(0XFFEEEEEE),
        fontSize: 24,
        height: 1.2,
        fontFamily: 'poppins',
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
