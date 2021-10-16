import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/modules/apresentation/homepage/homepage_controller.dart';
import 'package:obifilmes/modules/apresentation/moviespage/loadingpage.dart';
import 'package:obifilmes/modules/apresentation/moviespage/moviecontroller.dart';
import 'package:obifilmes/modules/apresentation/moviespage/widgets/moviecontent.dart';

class MoviesContentPage extends StatefulWidget {
  int index;
  MoviesContentPage({Key? key, this.index = 1}) : super(key: key);

  @override
  _MoviesContentPage createState() => _MoviesContentPage();
}

class _MoviesContentPage extends State<MoviesContentPage> {
  final controller = Get.put(MovieController());
  final HomePageController controllerPage = Get.find();
  late Future movieSearch;

  @override
  void initState() {
    super.initState();
    setState(() {
      controller.searchMovies(widget.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        id: 'changescreen',
        init: controller,
        builder: (_) {
          return FutureBuilder(
              future: controller.searchMovies(widget.index),
              builder: (context, snapshot) {
                Widget value;
                if (snapshot.connectionState == ConnectionState.done) {
                  value = Container(
                    color: Theme.of(context).cardColor,
                    child: ListView.builder(
                        itemCount: controller.movieList.results!.length,
                        itemBuilder: (ctx, index) {
                          return MovieContent(
                            movieIndex: index,
                            title: controller.movieList.results![index].title,
                            urlImage: controller
                                .movieList.results![index].poster_path,
                          );
                        }),
                  );
                } else {
                  value = LoadingPage();
                }
                return value;
              });
        });
  }
}
