import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:inwatch/app/presentation/widgets/text1.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF202431),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: Get.width,
              height: Get.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/squid-game-h.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  scale: 2,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0XFF202431).withOpacity(.6),
                      Colors.transparent,
                      Color(0XFF202431),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.fromLTRB(10, 44, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.orange,
                        size: 22,
                      ),
                      padding: const EdgeInsets.all(2),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: Icon(
                        LineAwesomeIcons.bookmark,
                        color: Colors.orange,
                        size: 22,
                      ),
                      padding: const EdgeInsets.all(2),
                      onPressed: () {
                        Get.snackbar(
                          'Salvo',
                          'podes vizualizar os salvos em perfil',
                          colorText: Colors.white,
                          icon: Icon(
                            Icons.check_circle_outline_rounded,
                            color: Colors.greenAccent,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, Get.height / 3, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text1('Squid Game - Round 6'),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'lorem ipsum dolit',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 4),
                        Wrap(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 14,
                            ),
                            SizedBox(width: 2),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 14,
                            ),
                            SizedBox(width: 2),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 14,
                            ),
                            SizedBox(width: 2),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 14,
                            ),
                            SizedBox(width: 2),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 14,
                            ),
                            SizedBox(width: 2),
                          ],
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.grey.withOpacity(.1),
                        ),
                      ),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 10,
                        children: [
                          Icon(
                            Icons.play_arrow,
                          ),
                          Text(
                            'Ver trailer',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Fuga amet quas ipsa explicabo, doloribus ex voluptatibus dolorum. Optio, numquam odio ex commodi esse nihil quos, doloremque sint praesentium perspiciatis tenetur rem cum ducimus et facilis recusandae. Ipsa officiis ipsam excepturi.',
                  style: TextStyle(
                    color: Color(0XFFCCCCCC),
                    fontFamily: 'rubik',
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Text(
                      'Produção:',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    Image.asset(
                      'assets/images/netflix.png',
                      width: 70,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
