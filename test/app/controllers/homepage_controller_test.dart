import 'package:flutter_test/flutter_test.dart';
import 'package:obifilmes/app/controllers/homepage_controller.dart';

void main() {
  final controller = HomePageController();

  test('See if method changePage is working', () async {
    expect(controller.initalPageIndex.value, 0);
    controller.changePage(2);
    expect(controller.initalPageIndex.value, 2);
  });
  test('See if method changeThemeMode is working', () async {
    expect(controller.isDarkMode, false);
    expect(controller.textTheme, 'Light Mode');
    controller.changeThemeMode();
    expect(controller.isDarkMode, true);
    expect(controller.textTheme, 'Dark Mode');
  });
}
