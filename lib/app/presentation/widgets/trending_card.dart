import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'indicator_badge.dart';
import 'text2.dart';

class TrendingCard extends StatelessWidget {
  const TrendingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 4.5,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.1),
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage('assets/images/gfme.jpg'),
          fit: BoxFit.fitHeight,
          alignment: Alignment.centerRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2),
          Text2('God Friended Me'),
          SizedBox(height: 1),
          Text(
            'Série',
            softWrap: true,
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'rubik',
              fontSize: 12,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Lorem ipsum dolor sit amet\nconsectetur adipisicing elit.',
            softWrap: true,
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'rubik',
              height: 1.2,
            ),
          ),
          SizedBox(height: 4),
          Row(children: [
            IndicatorBadge(iconData: LineAwesomeIcons.eye_1, label: '4M views'),
            SizedBox(width: 16),
            IndicatorBadge(
                iconData: LineAwesomeIcons.star_1, label: '3k stars'),
            SizedBox(width: 16),
            IndicatorBadge(
                iconData: LineAwesomeIcons.download, label: '2k downloads'),
          ]),
        ],
      ),
    );
  }
}
