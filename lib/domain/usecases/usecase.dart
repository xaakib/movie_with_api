import 'package:dartz/dartz.dart';
import 'package:movie_with_api/domain/entities/apperror_handaling.dart';

abstract class UseCase<Type, Params> {
  Future<Either<AppError, Type>> call(Params params);
}
