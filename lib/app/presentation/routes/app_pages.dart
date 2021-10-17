import 'package:get/get.dart';
import 'package:inwatch/app/presentation/screens/home/home.dart';
import 'package:inwatch/app/presentation/screens/movie/movie.dart';
import 'package:inwatch/app/presentation/screens/profile/profile.dart';
import 'package:inwatch/app/presentation/screens/search/search.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: Routes.SEARCH,
      page: () => SearchScreen(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => ProfileScreen(),
    ),
    GetPage(
      name: Routes.MOVIE,
      page: () => MovieScreen(),
    ),
  ];
}
