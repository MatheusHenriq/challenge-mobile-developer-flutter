import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/controllers/splashscreencontroller.dart';
import 'package:obifilmes/app/ui/android/splashscreen/widgets/animatedimage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashScreenController controllerSplash =
      Get.put(SplashScreenController());

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        controllerSplash.timerFunction();
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
