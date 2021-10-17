import 'package:flutter/material.dart';

ThemeData defaultTheme() {
  return ThemeData(
    fontFamily: 'rubik',
    primarySwatch: Colors.orange,
    scaffoldBackgroundColor: Color(0XFF202431),
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
      centerTitle: true,
      elevation: 0,
      color: Colors.transparent,
      actionsIconTheme: IconThemeData(
        color: Colors.blueGrey,
      ),
      iconTheme: IconThemeData(color: Colors.orange),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      selectedIconTheme: IconThemeData(color: Colors.orange),
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
  );
}
