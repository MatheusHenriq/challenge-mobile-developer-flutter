import 'package:get/get.dart';
import 'package:obifilmes/app/controllers/homepage_controller.dart';
import 'package:obifilmes/app/controllers/movie_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<HomePageController>(HomePageController());
    Get.put<MovieController>(MovieController());
  }
}
