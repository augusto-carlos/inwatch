import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/presentation/routes/app_pages.dart';
import 'app/presentation/theme/theme.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "inWatch",
      initialRoute: AppPages.INITIAL,
      theme: defaultTheme(),
      getPages: AppPages.routes,
      defaultTransition: Transition.topLevel,
      transitionDuration: Duration(milliseconds: 500),
      debugShowCheckedModeBanner: false,
    );
  }
}
