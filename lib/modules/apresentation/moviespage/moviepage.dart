import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/modules/apresentation/moviespage/moviecontent.dart';
import 'package:obifilmes/modules/apresentation/moviespage/moviecontroller.dart';
import 'package:obifilmes/modules/apresentation/moviespage/moviepage.dart';

class MoviePage extends StatefulWidget {
  MoviePage({Key? key}) : super(key: key);

  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  final MovieController controller = Get.put(MovieController());
  int pageMovieIndex = 1;
  @override
  void initState() {
    super.initState();
    setState(() {
      pageMovieIndex = controller.movieListId.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        id: 'changescreen',
        init: controller,
        builder: (_) {
          return Material(
            color: Theme.of(context).cardColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          controller.subListId();
                          setState(() {
                            pageMovieIndex = controller.movieListId.value;
                          });
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          controller.addListId();
                          setState(() {
                            pageMovieIndex = controller.movieListId.value;
                          });
                        },
                        icon: Icon(
                          Icons.arrow_forward,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: MoviesContentPage(index: pageMovieIndex),
                ),
              ],
            ),
          );
        });
  }
}
