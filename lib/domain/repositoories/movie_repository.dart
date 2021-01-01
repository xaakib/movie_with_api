import 'package:dartz/dartz.dart';
import 'package:movie_with_api/domain/entities/apperror_handaling.dart';
import 'package:movie_with_api/domain/entities/movie.entity.dart';

abstract class MovieRepository {
  Future<Either<AppError, List<MovieEnity>>> getTrending();
}
