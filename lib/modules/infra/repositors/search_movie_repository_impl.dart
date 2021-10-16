import 'package:obifilmes/modules/domain/erros/errors.dart';
import 'package:obifilmes/modules/domain/entities/movie_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:obifilmes/modules/domain/repositories/repositories.dart';
import 'package:obifilmes/modules/infra/datasource/datasources.dart';

class SearchMovieRepositoryImpl implements SearchMovieRepository {
  final SearchMovieDataSource datasource;
  SearchMovieRepositoryImpl(this.datasource);
  @override
  Future<Either<InvalidListId, MoviesEntity>> searchMovie(int listId) async {
    try {
      final result = await datasource.searchMovie(listId);
      return Right(result);
    } catch (e) {
      return Left(InvalidListId(msg: '$e'));
    }
  }
}
