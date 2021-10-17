import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/controllers/movie_controller.dart';
import 'package:obifilmes/app/ui/android/favoritepage/favoritecontent.dart';

class FavoritePage extends StatefulWidget {
  FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final MovieController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MovieController>(
        id: 'saveMovieList',
        init: controller,
        builder: (_) {
          return Container(
            color: Theme.of(context).cardColor,
            child: ListView.builder(
              itemCount: controller.saveMovieList!.length,
              itemBuilder: (ctx, index) {
                return FavoriteContent(
                  listId: controller.saveMovieList![index].listId,
                  urlImage: controller.saveMovieList![index].urlImage,
                  title: controller.saveMovieList![index].title,
                  movieIndex: controller.saveMovieList![index].resultIndex,
                );
              },
            ),
          );
        });
  }
}
