import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../movieinformation.dart';

class MovieContent extends StatelessWidget {
  final String? urlImage;
  final String? title;
  final int? movieIndex;
  MovieContent({
    Key? key,
    @required this.urlImage,
    @required this.title,
    @required this.movieIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: Theme.of(context).hoverColor,
      ),
      margin: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Image.network(
              'https://image.tmdb.org/t/p/w500$urlImage',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title!,
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 50,
                ),
                IconButton(
                  onPressed: () => Get.to(
                    MovieInformation(
                      movieIndex: movieIndex,
                    ),
                  ),
                  highlightColor: Colors.red,
                  icon: Icon(Icons.touch_app_outlined),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
