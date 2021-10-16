import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:obifilmes/modules/domain/erros/errors.dart';

import 'package:obifilmes/modules/infra/datasource/datasources.dart';
import 'package:obifilmes/modules/infra/models/movie_model.dart';

class SearchMovieDataSourceExtern implements SearchMovieDataSource {
  final Dio dio;
  SearchMovieDataSourceExtern(
    this.dio,
  );

  @override
  Future<MovieModel> searchMovie(int listId) async {
    final response = await dio.get(
        "https://api.themoviedb.org/4/list/$listId?api_key=2c6f5ef69c079796a50dc5f4a81f449f");
    if (response.statusCode == 200) {
      var data = jsonDecode(response.data);
      MovieModel movie = MovieModel.fromJson(data);
      return movie;
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
      throw InvalidListId(msg: 'Erro ao requisitar dados!');
    }
  }
}
