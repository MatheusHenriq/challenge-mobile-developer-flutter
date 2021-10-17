import 'dart:async';

import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  ///when this method is called, after 4 seconds app changes to '/' route(homepage,you can see it on routes files)
  timerFunction() {
    Timer(Duration(seconds: 4), () {
      Get.offAndToNamed('/');
    });
  }
}
