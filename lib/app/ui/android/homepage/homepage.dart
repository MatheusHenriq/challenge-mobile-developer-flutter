import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/ui/android/descriptionpage/descriptionpage.dart';
import 'package:obifilmes/app/controllers/homepage_controller.dart';
import 'package:obifilmes/app/ui/android/homepage/widgets/bottom_bar_bar_widget.dart';
import 'package:obifilmes/app/ui/android/moviespage/moviepage.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
        id: 'pageview',
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              actions: [
                InkWell(
                  child: Icon(
                    Icons.movie_creation_sharp,
                  ),
                  onTap: () {
                    Get.to(MoviePage());
                  },
                )
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
                Container(
                  color: Colors.green,
                ),
              ],
            ),
          );
        });
  }
}
