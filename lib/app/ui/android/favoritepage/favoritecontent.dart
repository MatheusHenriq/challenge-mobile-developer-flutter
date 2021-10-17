import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/controllers/movie_controller.dart';
import 'package:obifilmes/app/ui/android/moviespage/loadingpage.dart';
import 'package:obifilmes/app/ui/android/moviespage/movieinformation.dart';

class FavoriteContent extends StatefulWidget {
  final String? urlImage;
  final int? listId;
  final String? title;
  final int? movieIndex;
  FavoriteContent({
    Key? key,
    @required this.urlImage,
    @required this.listId,
    @required this.title,
    @required this.movieIndex,
  }) : super(key: key);

  @override
  State<FavoriteContent> createState() => _FavoriteContentState();
}

class _FavoriteContentState extends State<FavoriteContent> {
  final MovieController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MovieController>(
        initState: (_) {
          controller.searchMovies(widget.listId!);
        },
        init: controller,
        id: 'changescreen',
        builder: (_) {
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
                    'https://image.tmdb.org/t/p/w500${widget.urlImage}',
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
                        widget.title!,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      IconButton(
                        onPressed: () => Get.to(
                          FutureBuilder(
                              future: controller.searchMovies(widget.listId!),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.done) {
                                  return MovieInformation(
                                    movieIndex: widget.movieIndex,
                                  );
                                } else {
                                  return LoadingPage();
                                }
                              }),
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
        });
  }
}
