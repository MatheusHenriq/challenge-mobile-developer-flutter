import 'package:obifilmes/app/data/db/db.dart';
import 'package:sqflite/sqflite.dart';

import 'package:obifilmes/app/data/models/savemovie_model.dart';

class MovieRepository {
  late Database db;
  var _favoriteMovies = <SaveMovieModel>[];

  List<SaveMovieModel> get favoriteMovies => _favoriteMovies;

  MovieRepository() {
    _initRepository();
  }

  void _initRepository() async {
    await _getMovie();
  }

  _getMovie() async {
    db = await DB.instance.database;
    List favoriteMovies = await db.query('Movie');
  }
}
