import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/modules/apresentation/moviespage/bindings.dart';
import 'package:obifilmes/routes/app_pages.dart';
import 'package:obifilmes/routes/app_routes.dart';
import 'package:obifilmes/utils/themes.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'ObiFilmes',
    theme: Themes.appLightTheme,
    themeMode: ThemeMode.light,
    initialRoute: Routes.HOME,
    initialBinding: MovieBinding(),
    getPages: AppPages.routes,
  ));
}
