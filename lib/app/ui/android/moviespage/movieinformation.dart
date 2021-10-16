import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/controllers/moviecontroller.dart';
import 'package:obifilmes/app/ui/android/moviespage/widgets/textandescription.dart';

class MovieInformation extends StatelessWidget {
  final int? movieIndex;
  MovieInformation({
    Key? key,
    @required this.movieIndex,
  }) : super(key: key);

  final MovieController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        child: IconButton(
            onPressed: controller.changeFavorite,
            icon: Obx(
              () => Icon(
                Icons.favorite,
                color: controller.checkFavorite.value
                    ? Colors.pink[400]
                    : Colors.grey[400],
              ),
            )),
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
                  controller.movieList.results![movieIndex!].title!,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Image.network(
                  'https://image.tmdb.org/t/p/w500${controller.movieList.results![movieIndex!].poster_path!}',
                  height: 250,
                  width: 200,
                ),
              ),
              Center(
                child: Text(
                  controller.movieList.results![movieIndex!].release_date!,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextAndDescription(
                text: 'OverView: ',
                description:
                    controller.movieList.results![movieIndex!].overview!,
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
                        text: controller
                            .movieList.results![movieIndex!].vote_count!
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
                        text: controller
                            .movieList.results![movieIndex!].vote_average!
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
                        text: controller
                            .movieList.results![movieIndex!].popularity!
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
  }
}
