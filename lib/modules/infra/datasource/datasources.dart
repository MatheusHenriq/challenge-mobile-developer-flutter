import 'package:obifilmes/modules/infra/models/movie_model.dart';

abstract class SearchMovieDataSource {
  Future<MovieModel> searchMovie(int listId);
}
