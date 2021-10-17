import 'package:flutter/material.dart';

class SimpleChip extends StatelessWidget {
  final String label;
  final IconData iconData;

  const SimpleChip({Key? key, required this.iconData, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      backgroundColor: Colors.orange.withOpacity(.1),
      avatar: CircleAvatar(
        backgroundColor: Colors.orange.withOpacity(.3),
        radius: 10,
        child: Icon(
          this.iconData,
          color: Colors.orange,
          size: 14,
        ),
      ),
      label: Text(
        this.label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
      onPressed: () {},
    );
  }
}
