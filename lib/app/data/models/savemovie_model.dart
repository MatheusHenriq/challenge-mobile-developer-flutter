import 'dart:convert';

class SaveMovieModel {
  int? resultIndex;
  int? listId;
  int? idMovie;
  String? urlImage;
  String? title;

  SaveMovieModel({
    this.resultIndex,
    this.listId,
    this.urlImage,
    this.idMovie,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return {
      'resultIndex': resultIndex,
      'listId': listId,
      'idMovie': idMovie,
      'urlImage': urlImage,
      'title': title,
    };
  }

  factory SaveMovieModel.fromMap(Map<String, dynamic> map) {
    return SaveMovieModel(
      resultIndex: map['resultIndex'],
      listId: map['listId'],
      idMovie: map['idMovie'],
      urlImage: map['urlImage'],
      title: map['title'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SaveMovieModel.fromJson(String source) =>
      SaveMovieModel.fromMap(json.decode(source));
}
