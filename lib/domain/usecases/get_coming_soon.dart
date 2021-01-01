import 'package:dartz/dartz.dart';
import 'package:movie_with_api/domain/entities/apperror_handaling.dart';
import 'package:movie_with_api/domain/entities/movie.entity.dart';
import 'package:movie_with_api/domain/repositoories/movie_repository.dart';

class GetComingSoon {
  final MovieRepository repository;
  GetComingSoon(this.repository);
  Future<Either<AppError, List<MovieEnity>>> call() async {
    return await repository.getComingSoon();
  }
}
