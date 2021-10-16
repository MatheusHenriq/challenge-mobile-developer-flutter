import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/controllers/homepage_controller.dart';
import 'package:obifilmes/app/utils/textstyles.dart';

class BottomNavBarWidget extends StatelessWidget {
  BottomNavBarWidget({Key? key}) : super(key: key);
  final HomePageController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: controller.initalPageIndex.value,
      type: BottomNavigationBarType.fixed,
      iconSize: 20,
      backgroundColor: Theme.of(context).primaryColor,
      onTap: (page) {
        controller.pageController.animateToPage(
          page,
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        );
      },
      selectedItemColor: Theme.of(context).hintColor,
      unselectedFontSize: 10,
      selectedLabelStyle: TextStyles.smallStyle.apply(color: Colors.black),
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          label: 'Home',
          activeIcon: Icon(
            Icons.home,
            size: 28,
            color: Colors.blue[900],
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.movie_filter_sharp,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.movie_filter_sharp,
            size: 28,
            color: Colors.purple[900],
          ),
          label: 'Movies',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.favorite,
            size: 28,
            color: Colors.red,
          ),
          label: 'Favorites',
        ),
      ],
    );
  }
}
