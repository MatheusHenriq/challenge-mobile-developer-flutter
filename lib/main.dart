import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/routes/app_pages.dart';
import 'package:obifilmes/app/routes/app_routes.dart';
import 'package:obifilmes/app/ui/themes/themes.dart';

void main() async {
  runApp(GetMaterialApp(
    title: 'ObiFilmes',
    theme: Themes.appLightTheme,
    themeMode: ThemeMode.light,
    darkTheme: Themes.appDarkTheme,
    initialRoute: Routes.HOME,
    getPages: AppPages.routes,
  ));
}
