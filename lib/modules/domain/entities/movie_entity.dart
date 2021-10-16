import 'dart:convert';

class MoviesEntity {
  int? id;
  int? page;
  List<Results>? results;

  MoviesEntity({
    this.id,
    this.page,
    this.results,
  });
}

class Results {
  int? id;
  String? overview;
  double? popularity;
  String? poster_path;
  String? release_date;
  String? title;
  bool? video;
  double? vote_average;
  int? vote_count;

  Results(
      this.id,
      this.overview,
      this.popularity,
      this.poster_path,
      this.release_date,
      this.title,
      this.video,
      this.vote_average,
      this.vote_count);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'overview': overview,
      'popularity': popularity,
      'posterPath': poster_path,
      'releaseDate': release_date,
      'title': title,
      'video': video,
      'voteAverage': vote_average,
      'voteCount': vote_count,
    };
  }

  factory Results.fromMap(Map<String, dynamic> map) {
    return Results(
      map['id'],
      map['overview'],
      map['popularity'],
      map['poster_path'],
      map['release_date'],
      map['title'],
      map['video'],
      map['vote_average'],
      map['vote_count'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Results.fromJson(String source) =>
      Results.fromMap(json.decode(source));
}
