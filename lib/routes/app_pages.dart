import 'package:get/get.dart';
import 'package:obifilmes/modules/apresentation/descriptionpage/descriptionpage.dart';
import 'package:obifilmes/modules/apresentation/homepage/homepage.dart';
import 'package:obifilmes/modules/apresentation/moviespage/bindings.dart';
import 'package:obifilmes/modules/apresentation/moviespage/moviepage.dart';

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
        binding: MovieBinding()),
    GetPage(
      name: Routes.DESCRIPTIONPAGE,
      page: () => DescriptionPage(),
    ),
  ];
}
