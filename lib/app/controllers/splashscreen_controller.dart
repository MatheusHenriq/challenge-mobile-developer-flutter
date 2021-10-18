import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/ui/android/homepage/homepage.dart';

class SplashScreenController extends GetxController {
  ///when this method is called, after 4 seconds app changes to '/' route(homepage,you can see it on routes files)
  timerFunction(BuildContext ctx) {
    Timer(Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil<dynamic>(
        ctx,
        MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => HomePage(),
        ),
        (route) => false, //if you want to disable back feature set to false
      );
    });
  }
}
