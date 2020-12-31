import 'movie_models.dart';

class MoviesResultModel {
  int page;
  List<MovieModel> movies;
  int totalPages;
  int totalResults;

  MoviesResultModel({this.movies});

  MoviesResultModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      movies = new List<MovieModel>();
      json['results'].forEach((v) {
        movies.add(new MovieModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.movies != null) {
      data['results'] = this.movies.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
