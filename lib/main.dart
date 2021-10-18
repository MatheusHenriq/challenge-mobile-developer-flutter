import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:obifilmes/app/routes/app_pages.dart';
import 'package:obifilmes/app/routes/app_routes.dart';
import 'package:obifilmes/app/ui/themes/themes.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    title: 'ObiFilmes',
    debugShowCheckedModeBanner: false,
    theme: Themes.appLightTheme,
    themeMode: ThemeMode.light,
    darkTheme: Themes.appDarkTheme,
    initialRoute: Routes.SPLASH,
    getPages: AppPages.routes,
  ));
}
