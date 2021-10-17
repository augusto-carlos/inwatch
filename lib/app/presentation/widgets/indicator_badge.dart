import 'package:flutter/material.dart';

class IndicatorBadge extends StatelessWidget {
  final IconData iconData;
  final String label;

  IndicatorBadge({
    required IconData iconData,
    required String label,
  })  : this.iconData = iconData,
        this.label = label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(4),
          child: Icon(
            this.iconData,
            size: 14,
            color: Colors.orange,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.2),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        Text(
          this.label,
          style: TextStyle(
            fontFamily: 'rubik',
            fontSize: 11,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
