import 'package:movie_with_api/domain/entities/movie.entity.dart';

class MovieModel extends MovieEnity {
  final double voteAverage;
  final String overview;
  final String releaseDate;
  final String title;
  final bool adult;
  final String backdropPath;
  final List<int> genreIds;
  final int voteCount;
  final String originalLanguage;
  final String originalTitle;
  final String posterPath;
  final int id;
  final bool video;
  final double popularity;
  final String mediaType;

  MovieModel(
      {this.voteAverage,
      this.overview,
      this.releaseDate,
      this.title,
      this.adult,
      this.backdropPath,
      this.genreIds,
      this.voteCount,
      this.originalLanguage,
      this.originalTitle,
      this.posterPath,
      this.id,
      this.video,
      this.popularity,
      this.mediaType});

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      voteAverage: json['vote_average'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      title: json['title'],
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      genreIds: json['genre_ids'].cast<int>(),
      voteCount: json['vote_count'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      posterPath: json['poster_path'],
      id: json['id'],
      video: json['video'],
      popularity: json['popularity'],
      mediaType: json['media_type'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vote_average'] = this.voteAverage;
    data['overview'] = this.overview;
    data['release_date'] = this.releaseDate;
    data['title'] = this.title;
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['genre_ids'] = this.genreIds;
    data['vote_count'] = this.voteCount;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['poster_path'] = this.posterPath;
    data['id'] = this.id;
    data['video'] = this.video;
    data['popularity'] = this.popularity;
    data['media_type'] = this.mediaType;
    return data;
  }
}
