import 'package:dartz/dartz.dart';
import 'package:movie_with_api/domain/entities/apperror_handaling.dart';
import 'package:movie_with_api/domain/entities/movie.entity.dart';
import 'package:movie_with_api/domain/entities/no_params.dart';
import 'package:movie_with_api/domain/repositoories/movie_repository.dart';
import 'package:movie_with_api/domain/usecases/usecase.dart';

class GetPopuler extends UseCase<List<MovieEnity>, NoParams> {
  final MovieRepository repository;
  GetPopuler(this.repository);
  Future<Either<AppError, List<MovieEnity>>> call(NoParams noParams) async {
    return await repository.getPopular();
  }
}
