import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomePageController extends GetxController {
  var initalPageIndex = 0.obs;
  PageController pageController = PageController();
  var isDarkMode = false;
  var textTheme = 'Light Mode';
  final themeStorage = GetStorage();

  updateThemeMode() {
    themeStorage.writeIfNull("darkmode", false);
    isDarkMode = themeStorage.read("darkmode");
    if (!isDarkMode) {
      Get.changeThemeMode(ThemeMode.light);
      textTheme = 'Light Mode';
    } else {
      Get.changeThemeMode(ThemeMode.dark);
      textTheme = 'Dark Mode';
    }
  }

  ///change page in bottomappbar
  changePage(int page) {
    initalPageIndex.value = page;
    update(['pageview']);
  }

  ///change thememode and texttheme
  changeThemeMode() {
    isDarkMode = !isDarkMode;
    if (!isDarkMode) {
      Get.changeThemeMode(ThemeMode.light);
      textTheme = 'Light Mode';
    } else {
      Get.changeThemeMode(ThemeMode.dark);
      textTheme = 'Dark Mode';
    }
    themeStorage.write("darkmode", isDarkMode);
    update(['pageview']);
  }
}
