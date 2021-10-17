import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/controllers/movie_controller.dart';
import 'package:obifilmes/app/ui/android/descriptionpage/descriptionpage.dart';
import 'package:obifilmes/app/controllers/homepage_controller.dart';
import 'package:obifilmes/app/ui/android/favoritepage/favoritepage.dart';
import 'package:obifilmes/app/ui/android/homepage/widgets/bottom_bar_bar_widget.dart';
import 'package:obifilmes/app/ui/android/moviespage/moviepage.dart';
import 'package:obifilmes/app/utils/textstyles.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomePageController controller = Get.put(HomePageController());
  final MovieController controllerMovie = Get.put(MovieController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
        initState: (_) {
          controllerMovie.getSaveMovies();
        },
        id: 'pageview',
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              actions: [
                InkWell(
                  child: controller.isDarkMode
                      ? Row(
                          children: [
                            Icon(
                              Icons.nights_stay,
                            ),
                            Text(
                              controller.textTheme,
                              style: TextStyles.smallStyle
                                  .apply(color: Theme.of(context).hintColor),
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Icon(
                              Icons.wb_sunny,
                              color: Colors.yellow[800],
                            ),
                            Text(
                              controller.textTheme,
                              style: TextStyles.smallStyle
                                  .apply(color: Theme.of(context).hintColor),
                            ),
                          ],
                        ),
                  onTap: controller.changeThemeMode,
                ),
                SizedBox(
                  width: 15,
                ),
              ],
              backgroundColor: Theme.of(context).primaryColor,
              title: Text(
                'ObiFilmes',
                style: Theme.of(context).textTheme.headline4,
              ),
              centerTitle: true,
            ),
            bottomNavigationBar: BottomNavBarWidget(),
            body: PageView(
              onPageChanged: controller.changePage,
              physics: NeverScrollableScrollPhysics(),
              controller: controller.pageController,
              children: [
                DescriptionPage(),
                MoviePage(),
                FavoritePage(),
              ],
            ),
          );
        });
  }
}
