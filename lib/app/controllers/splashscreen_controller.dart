import 'dart:async';

import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  timerFunction() {
    Timer(Duration(seconds: 4), () {
      Get.offAndToNamed('/');
    });
  }
}
