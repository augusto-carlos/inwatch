import 'package:flutter/material.dart';

class AthorAvatar extends StatelessWidget {
  final String name;
  final String imagePath;

  const AthorAvatar(
    this.name,
    this.imagePath,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(this.imagePath),
            radius: 26,
          ),
          SizedBox(height: 2),
          Text(
            this.name,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 10,
              height: 1.2,
              fontFamily: 'poppins',
            ),
          ),
        ],
      ),
    );
  }
}
