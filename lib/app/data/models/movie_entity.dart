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
  dynamic? id;
  dynamic? overview;
  dynamic? popularity;
  dynamic? poster_path;
  dynamic? release_date;
  dynamic? title;
  dynamic? video;
  dynamic? vote_average;
  dynamic? vote_count;

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
      'poster_path': poster_path,
      'release_date': release_date,
      'title': title,
      'video': video,
      'vote_average': vote_average,
      'vote_count': vote_count,
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
