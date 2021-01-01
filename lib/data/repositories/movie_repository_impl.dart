import 'package:movie_with_api/data/data_source/movie_remote_data_source.dart';
import 'package:movie_with_api/data/models/movie_models.dart';
import 'package:movie_with_api/domain/repositoories/movie_repository.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MovieRemoteDataSource remoteDataSource;
  MovieRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<MovieModel>> getTrending() async {
    try {
      final movies = await remoteDataSource.getTrending();
      return movies;
    } on Exception {
      return null;
    }
  }
}
