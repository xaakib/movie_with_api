import 'movie_models.dart';

class MoviesResultModel {
  int page;
  List<MovieModel> results;
  int totalPages;
  int totalResults;

  MoviesResultModel({this.results});

  MoviesResultModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = new List<MovieModel>();
      json['results'].forEach((v) {
        results.add(new MovieModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
