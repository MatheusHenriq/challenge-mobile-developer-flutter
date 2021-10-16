import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:obifilmes/app/data/models/movie_model.dart';
import 'package:obifilmes/app/data/models/savemovie_model.dart';

class MovieController extends GetxController {
  late MovieModel movieList;
  var checkFavorite = false.obs;
  var movieListId = 3.obs;
  var saveMovieList = <SaveMovieModel>[];

  ///increment index of listId, when you increment this index, you will reload the page and search the new page with this index.
  addListId() {
    movieListId.value = movieListId.value + 1;
    update(['changescreen']);
  }

  ///decrement index of listId, when you decrement this index, you will reload the page and search the new page with this index.
  subListId() {
    ///if index is 1, you cannot go to 0 because the minimum index of listId is 1.
    if (movieListId.value == 1) {
      movieListId.value = 1;
    } else {
      movieListId.value = movieListId.value - 1;
    }
    update(['changescreen']);
  }

  ///change the favorite status in MovieInformation
  changeFavorite(int resultIndex, int listId, int idMovie, bool isSave,
      String urlImage, String title) {
    checkFavorite.value = isSave;
    int getMovieIndex = 0;
    if (saveMovieList.length > 0) {
      for (int i = 0; i < saveMovieList.length; i++) {
        if (idMovie == saveMovieList[i].idMovie) {
          getMovieIndex = i;
        }
      }
    }

    checkFavorite.value
        ? saveMovieList.add(
            SaveMovieModel(
              title: title,
              urlImage: urlImage,
              resultIndex: resultIndex,
              listId: listId,
              idMovie: idMovie,
            ),
          )
        : saveMovieList.removeAt(getMovieIndex);

    update(['saveMoveList']);
  }

  bool checkSaveMovie(int idMovie) {
    if (saveMovieList.length > 0) {
      for (int i = 0; i < saveMovieList.length; i++) {
        if (idMovie == saveMovieList[i].idMovie) {
          update(['saveMoveList']);
          return true;
        }
      }
    }
    update(['saveMoveList']);
    return false;
  }

  ///api consume
  searchMovies(int listId) async {
    final Dio dio = Dio();
    final response = await dio.get(
        "https://api.themoviedb.org/4/list/$listId?api_key=2c6f5ef69c079796a50dc5f4a81f449f");
    if (response.statusCode == 200) {
      var movie = MovieModel.fromMap(response.data);
      movieList = movie;
    } else {
      if (response.statusCode == 403) {
        throw Exception(
            'O programa não tem mais direito de acessar o conteúdo! :/');
      }
      if (response.statusCode == 400) {
        throw Exception('O servidor não entendeu sua requisição! :/');
      }
      if (response.statusCode == 404) {
        throw Exception(
            'O servidor não está conseguindo encontrar o recurso solicitado! :/');
      }
    }
  }
}
