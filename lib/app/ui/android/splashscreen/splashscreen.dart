import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/controllers/homepage_controller.dart';
import 'package:obifilmes/app/controllers/splashscreen_controller.dart';
import 'package:obifilmes/app/ui/android/splashscreen/widgets/animatedimage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashScreenController controllerSplash =
      Get.put(SplashScreenController());
  final HomePageController controllerHome = Get.put(HomePageController());

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        controllerSplash.timerFunction(context);
        controllerHome.updateThemeMode();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/movie.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: AnimationImage(),
      ),
    );
  }
}
