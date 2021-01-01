import 'package:dartz/dartz.dart';
import 'package:movie_with_api/data/data_source/movie_remote_data_source.dart';
import 'package:movie_with_api/data/models/movie_models.dart';
import 'package:movie_with_api/domain/entities/apperror_handaling.dart';
import 'package:movie_with_api/domain/entities/movie.entity.dart';
import 'package:movie_with_api/domain/repositoories/movie_repository.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MovieRemoteDataSource remoteDataSource;
  MovieRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<AppError, List<MovieModel>>> getTrending() async {
    try {
      final movies = await remoteDataSource.getTrending();
      return Right(movies);
    } on Exception {
      return Left(AppError('Something went wron'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEnity>>> getComingSoon() async {
    try {
      final movies = await remoteDataSource.getComeingSoon();
      return Right(movies);
    } on Exception {
      return Left(AppError('Something went wron'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEnity>>> getPlayingNow() async {
    try {
      final movies = await remoteDataSource.getPlayingNow();
      return Right(movies);
    } on Exception {
      return Left(AppError('Something went wron'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEnity>>> getPopular() async {
    try {
      final movies = await remoteDataSource.getPopuler();
      return Right(movies);
    } on Exception {
      return Left(AppError('Something went wron'));
    }
  }
}
