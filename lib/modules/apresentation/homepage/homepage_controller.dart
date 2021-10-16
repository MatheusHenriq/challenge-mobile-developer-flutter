import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  var initalPageIndex = 0.obs;
  PageController pageController = PageController();

  changePage(int page) {
    initalPageIndex.value = page;
    update(['pageview']);
  }
}
