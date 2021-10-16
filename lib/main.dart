import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/routes/app_pages.dart';
import 'package:obifilmes/app/routes/app_routes.dart';
import 'package:obifilmes/app/ui/themes/themes.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'ObiFilmes',
    theme: Themes.appLightTheme,
    themeMode: ThemeMode.light,
    initialRoute: Routes.SPLASH,
    getPages: AppPages.routes,
  ));
}
