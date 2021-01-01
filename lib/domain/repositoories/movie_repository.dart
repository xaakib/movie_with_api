import 'package:movie_with_api/domain/entities/movie.entity.dart';

abstract class MovieRepository {
  Future<List<MovieEnity>> getTrending();
}
