import 'package:flutter/material.dart';

class AnimationImage extends StatefulWidget {
  final String imageUrl;
  AnimationImage({Key? key, this.imageUrl = 'assets/images/obitec.png'})
      : super(key: key);

  @override
  _AnimationImageState createState() => _AnimationImageState();
}

class _AnimationImageState extends State<AnimationImage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> curve;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    curve =
        CurvedAnimation(parent: animationController, curve: Curves.bounceOut);
    animation = Tween<double>(begin: 0, end: 300).animate(curve)
      ..addListener(() {
        setState(() {});
      });

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        child: Container(
          height: animation.value,
          width: animation.value,
          color: Colors.transparent,
          child: Image.asset(widget.imageUrl),
        ),
        tween: Tween<double>(begin: 0, end: 1),
        duration: Duration(seconds: 3),
        curve: Curves.bounceOut,
        builder: (context, double _val, child) {
          return Opacity(
            opacity: _val,
            child: child,
          );
        });
  }
}
