import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/controllers/homepage_controller.dart';
import 'package:obifilmes/app/controllers/movie_controller.dart';
import 'package:obifilmes/app/ui/android/moviespage/loadingpage.dart';
import 'package:obifilmes/app/ui/android/moviespage/widgets/moviecontent.dart';

class MoviesChoose extends StatefulWidget {
  int? index;
  MoviesChoose({Key? key, this.index}) : super(key: key);

  @override
  _MoviesChoosePage createState() => _MoviesChoosePage();
}

class _MoviesChoosePage extends State<MoviesChoose> {
  final controller = Get.put(MovieController());
  final HomePageController controllerPage = Get.find();

  @override
  void initState() {
    setState(() {
      controller.searchMovies(widget.index!);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      id: 'changescreen',
      init: controller,
      builder: (_) {
        return FutureBuilder(
          future: controller.searchMovies(widget.index!),
          builder: (context, snapshot) {
            Widget value;
            if (snapshot.connectionState == ConnectionState.done) {
              value = Container(
                color: Theme.of(context).cardColor,
                child: ListView.builder(
                    itemCount: controller.movieList.results?.length,
                    itemBuilder: (ctx, index) {
                      return MovieContent(
                        movieIndex: index,
                        title: controller.movieList.results?[index].title,
                        urlImage:
                            controller.movieList.results?[index].poster_path,
                      );
                    }),
              );
            } else {
              value = LoadingPage();
            }
            return value;
          },
        );
      },
    );
  }
}
