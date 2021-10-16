import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class DB {
  DB._();

  static final DB instance = DB._();

  static Database? _database;

  get database async {
    if (database != null) return _database;

    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'favorite_movies.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, version) async {
    await db.execute(_favoriteMovies);
  }

  String get _favoriteMovies => '''
  CREATE TABLE Movie(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    resultIndex INTEGER NOT NULL,
    idMovie INTEGER NOT NULL,
    currentIndex INTEGER NOT NULL,
    urlImage TEXT NOT NULL,
    title TEXT NOT NULL
  );
  ''';
}
