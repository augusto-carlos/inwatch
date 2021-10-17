import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inwatch/app/presentation/widgets/text1.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      semanticLabel: 'Menu lateral',
      child: Container(
        color: Color(0XFF202431),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.05),
              ),
              child: InkWell(
                onTap: () {
                  Get.toNamed('/profile');
                },
                child: Row(
                  children: [
                    Hero(
                      tag: 'image-profile',
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image:
                                AssetImage('assets/images/profile-image.jpg'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text1('Carlos Augusto'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  buildMenuItem('Meu Peril', LineAwesomeIcons.user, () {}),
                  buildMenuItem(
                      'Estatísticas', LineAwesomeIcons.bar_chart, () {}),
                  buildMenuItem('Aparência', Icons.palette_outlined, () {}),
                  buildMenuItem('Syncronizar dados',
                      LineAwesomeIcons.alternate_cloud_upload, () {}),
                  buildMenuItem('Configurações', Icons.settings, () {}),
                  buildMenuItem(
                      'Informações', Icons.info_outline_rounded, () {}),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    LineAwesomeIcons.gem,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 4),
                  Text(
                    'seja premium',
                    style: TextStyle(color: Colors.orange),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell buildMenuItem(String label, IconData iconData, Function onTap) {
    return InkWell(
      onTap: () => onTap,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            Icon(iconData, color: Colors.white),
            SizedBox(width: 10),
            Text(
              label,
              style: TextStyle(
                fontFamily: 'rubik',
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
