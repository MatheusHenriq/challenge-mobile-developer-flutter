import 'package:flutter_test/flutter_test.dart';
import 'package:obifilmes/app/controllers/movie_controller.dart';
import 'package:obifilmes/app/data/models/savemovie_model.dart';

void main() {
  final controller = MovieController();
  test('See if method changeSaveStatus is working', () async {
    expect(controller.isSave, false);
    controller.changeSaveStatus();
    expect(controller.isSave, true);
  });
  test('See if method addListId is working', () async {
    expect(controller.movieListId.value, 1);
    controller.addListId();
    expect(controller.movieListId.value, 2);
  });
  test('See if method subListId is working', () async {
    expect(controller.movieListId.value, 2);
    controller.subListId();
    expect(controller.movieListId.value, 1);
  });
  test('See if method checkSaveMovie is working', () async {
    controller.saveMovieList!.add(
      SaveMovieModel(
        title: 'title',
        urlImage: 'urlImage',
        resultIndex: 1,
        listId: 1,
        idMovie: 1,
      ),
    );
    expect(controller.checkSaveMovie(1), true);
  });
}
