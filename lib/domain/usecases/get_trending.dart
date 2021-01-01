import 'package:movie_with_api/domain/entities/movie.entity.dart';
import 'package:movie_with_api/domain/repositoories/movie_repository.dart';

class GetTrending {
  final MovieRepository repository;
  GetTrending(this.repository);
  Future<List<MovieEnity>> call() async {
    return await repository.getTrending();
  }
}
