import 'package:get/get.dart';
import 'package:obifilmes/app/bindings/bindings.dart';
import 'package:obifilmes/app/ui/android/descriptionpage/descriptionpage.dart';
import 'package:obifilmes/app/ui/android/favoritepage/favoritepage.dart';
import 'package:obifilmes/app/ui/android/homepage/homepage.dart';
import 'package:obifilmes/app/ui/android/moviespage/moviepage.dart';
import 'package:obifilmes/app/ui/android/splashscreen/splashscreen.dart';
import 'app_routes.dart';

abstract class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.MOVIEPAGE,
      page: () => MoviePage(),
    ),
    GetPage(
      name: Routes.DESCRIPTIONPAGE,
      page: () => DescriptionPage(),
    ),
    GetPage(
        name: Routes.SPLASH,
        page: () => SplashScreen(),
        binding: AppBindings()),
    GetPage(
      name: Routes.FAVORITE,
      page: () => FavoritePage(),
    ),
  ];
}
