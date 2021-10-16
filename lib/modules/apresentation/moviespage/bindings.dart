import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:obifilmes/modules/domain/repositories/repositories.dart';
import 'package:obifilmes/modules/domain/usecases/search_movies_usecase.dart';
import 'package:obifilmes/modules/external/search_movie_datasource.dart';
import 'package:obifilmes/modules/infra/datasource/datasources.dart';
import 'package:obifilmes/modules/infra/repositors/search_movie_repository_impl.dart';

class MovieBinding extends Bindings {
  @override
  void dependencies() {
    ///all Chapters
    Get.lazyPut<SearchMovies>(
      () => SearchMoviesImpl(Get.find<SearchMovieRepository>()),
    );
    Get.lazyPut<SearchMovieRepository>(
      () => SearchMovieRepositoryImpl(Get.find<SearchMovieDataSource>()),
    );
    Get.lazyPut<SearchMovieDataSource>(
      () => SearchMovieDataSourceExtern(Dio()),
    );
  }
}
