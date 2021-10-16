import 'package:dartz/dartz.dart';
import 'package:obifilmes/modules/domain/entities/movie_entity.dart';
import 'package:obifilmes/modules/domain/erros/errors.dart';
import 'package:obifilmes/modules/domain/repositories/repositories.dart';

///caso de uso para se pegar filmes: enviar um list_id válido

abstract class SearchMovies {
  Future<Either<InvalidListId, MoviesEntity>> call(int listId);
}

class SearchMoviesImpl implements SearchMovies {
  final SearchMovieRepository repository;
  SearchMoviesImpl(this.repository);
  @override
  Future<Either<InvalidListId, MoviesEntity>> call(int listId) async {
    if (listId != 0) {
      return repository.searchMovie(listId);
    } else {
      return Left(InvalidListId(msg: 'Lista inválida!'));
    }
  }
}
