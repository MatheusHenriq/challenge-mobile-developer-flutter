import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/modules/apresentation/moviespage/movieinformation.dart';

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
        color: Colors.grey[300],
      ),
      margin: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.network(
            'https://image.tmdb.org/t/p/w500$urlImage',
            height: 200,
            width: 200,
            fit: BoxFit.fill,
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
                  style: Theme.of(context).textTheme.bodyText2,
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
