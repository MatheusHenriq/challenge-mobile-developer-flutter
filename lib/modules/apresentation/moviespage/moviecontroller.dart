import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:obifilmes/modules/domain/entities/movie_entity.dart';
import 'package:obifilmes/modules/domain/erros/errors.dart';
import 'package:obifilmes/modules/domain/repositories/repositories.dart';
import 'package:obifilmes/modules/domain/usecases/search_movies_usecase.dart';
import 'package:obifilmes/modules/infra/datasource/datasources.dart';
import 'package:obifilmes/modules/infra/models/movie_model.dart';

class MovieController extends GetxController {
  final usecase = Get.find<SearchMovies>();
  final datasource = Get.find<SearchMovieRepository>();
  final externall = Get.find<SearchMovieDataSource>();

  late MovieModel movieList;
  var checkFavorite = false.obs;
  var movieListId = 3.obs;

  addListId() {
    movieListId.value = movieListId.value + 1;
    update(['changescreen']);
  }

  subListId() {
    if (movieListId.value == 1) {
      movieListId.value = 1;
    } else {
      movieListId.value = movieListId.value - 1;
    }
    update(['changescreen']);
  }

  changeFavorite() {
    checkFavorite.toggle();
  }

  searchMovies(int listId) async {
    final Dio dio = Dio();
    final response = await dio.get(
        "https://api.themoviedb.org/4/list/$listId?api_key=2c6f5ef69c079796a50dc5f4a81f449f");
    if (response.statusCode == 200) {
      var movie = MovieModel.fromMap(response.data);
      movieList = movie;
    } else {
      if (response.statusCode == 403) {
        throw InvalidListId(
            msg: 'O programa não tem mais direito de acessar o conteúdo! :/');
      }
      if (response.statusCode == 400) {
        throw InvalidListId(msg: 'O servidor não entendeu sua requisição! :/');
      }
      if (response.statusCode == 404) {
        throw InvalidListId(
            msg:
                'O servidor não está conseguindo encontrar o recurso solicitado! :/');
      }
    }
  }
}
