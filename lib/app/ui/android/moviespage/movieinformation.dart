import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/controllers/movie_controller.dart';
import 'package:obifilmes/app/ui/android/moviespage/widgets/textandescription.dart';

class MovieInformation extends StatefulWidget {
  final int? movieIndex;
  MovieInformation({
    Key? key,
    @required this.movieIndex,
  }) : super(key: key);

  @override
  State<MovieInformation> createState() => _MovieInformationState();
}

class _MovieInformationState extends State<MovieInformation> {
  final MovieController controller = Get.find();

  bool? isSave;
  @override
  void initState() {
    setState(() {
      isSave = controller.checkSaveMovie(
          controller.movieList.results![widget.movieIndex!].id!);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MovieController>(
        id: 'saveMoveList',
        init: controller,
        builder: (_) {
          return Scaffold(
            backgroundColor: Theme.of(context).cardColor,
            floatingActionButton: FloatingActionButton(
              backgroundColor: Theme.of(context).primaryColor,
              onPressed: () {
                setState(() {
                  isSave = !isSave!;
                });
                controller.changeFavorite(
                  widget.movieIndex!,
                  controller.movieListId.value,
                  controller.movieList.results![widget.movieIndex!].id!,
                  isSave!,
                  controller
                      .movieList.results![widget.movieIndex!].poster_path!,
                  controller.movieList.results![widget.movieIndex!].title!,
                );
              },
              child: Icon(
                Icons.favorite,
                color: isSave! ? Colors.pink[400] : Colors.grey[400],
              ),
              //   Obx(
              // () => Icon(
              //   Icons.favorite,
              //   color: controller.checkFavorite.value
              //       ? Colors.pink[400]
              //       : Colors.grey[400],
            ),
            body: Container(
              padding: EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () => Get.back(),
                      icon: Icon(Icons.arrow_back),
                    ),
                    Center(
                      child: Text(
                        controller
                            .movieList.results![widget.movieIndex!].title!,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Image.network(
                        'https://image.tmdb.org/t/p/w500${controller.movieList.results![widget.movieIndex!].poster_path!}',
                        height: 250,
                        width: 200,
                      ),
                    ),
                    Center(
                      child: Text(
                        controller.movieList.results![widget.movieIndex!]
                            .release_date!,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextAndDescription(
                      text: 'OverView: ',
                      description: controller
                          .movieList.results![widget.movieIndex!].overview!,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Number of votes: ',
                        style: Theme.of(context).textTheme.headline5,
                        children: [
                          TextSpan(
                              text: controller.movieList
                                  .results![widget.movieIndex!].vote_count!
                                  .toString(),
                              style: Theme.of(context).textTheme.bodyText1),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Vote Avarage: ',
                        style: Theme.of(context).textTheme.headline5,
                        children: [
                          TextSpan(
                              text: controller.movieList
                                  .results![widget.movieIndex!].vote_average!
                                  .toString(),
                              style: Theme.of(context).textTheme.bodyText1),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Popularity: ',
                        style: Theme.of(context).textTheme.headline5,
                        children: [
                          TextSpan(
                              text: controller.movieList
                                  .results![widget.movieIndex!].popularity!
                                  .toString(),
                              style: Theme.of(context).textTheme.bodyText1),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
