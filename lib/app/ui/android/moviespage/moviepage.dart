import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/controllers/moviecontroller.dart';

import 'moviechoose.dart';

class MoviePage extends StatefulWidget {
  MoviePage({Key? key}) : super(key: key);

  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  final MovieController controller = Get.put(MovieController());
  int pageMovieIndex = 3;
  @override
  void initState() {
    super.initState();
    setState(() {
      pageMovieIndex = controller.movieListId.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MovieController>(
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
                  child: MoviesChoose(index: pageMovieIndex),
                ),
              ],
            ),
          );
        });
  }
}
