import 'dart:async';

import 'package:obifilmes/app/data/models/savemovie_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class Db {
  Db._privateConstructor();
  static final Db instance = Db._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'favorite.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  FutureOr _onCreate(Database db, int version) async {
    await db.execute(
      '''
      CREATE TABLE favorites (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        resultIndex INTEGER, 
        idMovie INTEGER,
        urlImage TEXT,
        title TEXT,
        listId INTEGER
      ); 
    ''',
    );
  }

  Future<List<SaveMovieModel>> getFavorites() async {
    Database db = await instance.database;
    var favorites = await db.query('favorites');
    List<SaveMovieModel> favoriteList = favorites.isNotEmpty
        ? favorites.map((c) => SaveMovieModel.fromMap(c)).toList()
        : [];
    return favoriteList;
  }

  Future<int> add(SaveMovieModel saveMovieModel) async {
    Database db = await instance.database;
    return await db.insert('favorites', saveMovieModel.toMap());
  }

  Future<int> delete(int idMovie) async {
    Database db = await instance.database;
    return await db
        .delete('favorites', where: 'idMovie = ?', whereArgs: [idMovie]);
  }
}
