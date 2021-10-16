import 'dart:convert';

import 'package:obifilmes/app/models/movie_entity.dart';

class MovieModel implements MoviesEntity {
  int? id;
  int? page;
  List<Results>? results;

  MovieModel({
    this.id,
    this.page,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'page': page,
      'results': results?.map((x) => x.toMap()).toList(),
    };
  }

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      id: map['id'],
      page: map['page'],
      results:
          List<Results>.from(map['results'].map((x) => Results.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieModel.fromJson(String source) =>
      MovieModel.fromMap(json.decode(source));
}
