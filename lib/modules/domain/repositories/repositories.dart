import 'package:dartz/dartz.dart';
import 'package:obifilmes/modules/domain/entities/movie_entity.dart';
import 'package:obifilmes/modules/domain/erros/errors.dart';

abstract class SearchMovieRepository {
  Future<Either<InvalidListId, MoviesEntity>> searchMovie(int listId);
}
