import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/controllers/moviecontroller.dart';
import 'package:obifilmes/app/ui/android/favoritepage/favoritecontent.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({Key? key}) : super(key: key);
  final MovieController controller = Get.put(MovieController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      child: ListView.builder(
        itemCount: controller.saveMovieList.length,
        itemBuilder: (ctx, index) {
          return FavoriteContent(
            listId: controller.saveMovieList[index].listId,
            urlImage: controller.saveMovieList[index].urlImage,
            title: controller.saveMovieList[index].title,
            movieIndex: controller.saveMovieList[index].resultIndex,
          );
        },
      ),
    );
  }
}
