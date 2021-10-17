import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'package:inwatch/app/presentation/widgets/poster_card.dart';
import 'package:inwatch/app/presentation/widgets/search_field.dart';
import 'package:inwatch/app/presentation/widgets/text1.dart';
import 'package:inwatch/app/presentation/widgets/trending_card.dart';

import 'widgets/athor_avatar.dart';
import 'widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String title = 'inWatch';

  List<PosterCard> posters = [
    PosterCard(
      'Peaky Blinders',
      'assets/images/blinders.jpg',
      '4M',
      'Série',
    ),
    PosterCard(
      'Viúva negra',
      'assets/images/viuva.jpg',
      '3M',
      'Filme',
    ),
    PosterCard(
      'Squid Game - Round 6',
      'assets/images/round6.jpg',
      '8M',
      'Série',
    ),
    PosterCard(
      'Tenet',
      'assets/images/tenet.jpg',
      '89',
      'Filme',
    ),
    PosterCard(
      'God Friended Me',
      'assets/images/gfme.jpg',
      '2K',
      'série',
    ),
  ];
  List<AthorAvatar> athors = [
    AthorAvatar(
      'Tom Cruise',
      'assets/images/tom.jpg',
    ),
    AthorAvatar(
      'Michael B. Jordan',
      'assets/images/jordan.jpg',
    ),
    AthorAvatar(
      'Chris Hemsworth',
      'assets/images/chris.jpg',
    ),
    AthorAvatar(
      'Jamie Fox',
      'assets/images/jamie.jpg',
    ),
    AthorAvatar(
      'Will Smith',
      'assets/images/smith.jpg',
    ),
    AthorAvatar(
      'Noah Centineo',
      'assets/images/noah.jpg',
    ),
  ];

  void changeCard(int value) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.segment_rounded),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        actions: [
          IconButton(
            icon: Icon(
              LineAwesomeIcons.compass,
              size: 26,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text1('Encontre\nFilmes, séries e mais...'),
              SizedBox(height: 6),
              SearchField(
                  onChange: () {},
                  onTap: () {
                    Get.toNamed('/search');
                  }),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      LineAwesomeIcons.angle_down,
                      color: Colors.blueGrey,
                      size: 14,
                    ),
                    label: Text(
                      'Mais visto',
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Ver todos',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(children: this.posters),
              ),
              SizedBox(height: 20),
              Text(
                'Em alta',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 4),
              TrendingCard(),
              SizedBox(height: 20),
              Text(
                'Atores',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 4),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(children: this.athors),
              ),
            ],
          ),
        ),
      ),
      drawer: DrawerWidget(),
    );
  }

  Widget buildCategoriesBottomSheet() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.3),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Text('categoria');
                }),
          ),
        ],
      ),
    );
  }
}
