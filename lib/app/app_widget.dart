import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/routes/app_pages.dart';
import 'presentation/theme/theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

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
