import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class MovieEnity extends Equatable {
  final String posterPath;
  final int id;
  final String backdropPath;
  final String title;
  final num voteAvarage;
  final String releseDate;
  final String overview;

  const MovieEnity({
    @required this.posterPath,
    @required this.id,
    @required this.backdropPath,
    @required this.title,
    @required this.voteAvarage,
    @required this.releseDate,
    this.overview,
  }) : assert(id != null, 'Movie id must be null');
  @override
  List<Object> get props => [id, title];
  @override
  bool get stringify => true;
}
