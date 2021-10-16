import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/controllers/moviecontroller.dart';
import 'package:obifilmes/app/ui/android/moviespage/widgets/moviecontent.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({Key? key}) : super(key: key);
  final MovieController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      child: ListView.builder(
        itemCount: controller.saveMovieList.length,
        itemBuilder: (ctx, index) {
          return MovieContent(
            urlImage: controller.saveMovieList[index].urlImage,
            title: controller.saveMovieList[index].title,
            movieIndex: controller.saveMovieList[index].resultIndex,
          );
        },
      ),
    );
  }
}
