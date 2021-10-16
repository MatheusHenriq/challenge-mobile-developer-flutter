import 'package:flutter/material.dart';
import 'package:obifilmes/app/ui/android/splashscreen/widgets/animatedimage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/movie.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: AnimationImage(),
      ),
    );
  }
}
