import 'package:flutter/material.dart';
import 'package:inwatch/app/presentation/widgets/text2.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Hero(
                tag: 'image-profile',
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile-image.jpg'),
                    ),
                  ),
                ),
              ),
              Text2('Carlos Augusto'),
              SizedBox(height: 10),
              Text(
                'Just go ahead, keeping challenge you 💢',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'rubik',
                  height: 1.2,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
