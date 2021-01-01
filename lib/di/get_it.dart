import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:movie_with_api/data/core/api_client.dart';
import 'package:movie_with_api/data/data_source/movie_remote_data_source.dart';
import 'package:movie_with_api/data/repositories/movie_repository_impl.dart';
import 'package:movie_with_api/domain/repositoories/movie_repository.dart';
import 'package:movie_with_api/domain/usecases/get_coming_soon.dart';
import 'package:movie_with_api/domain/usecases/get_playing_now.dart';
import 'package:movie_with_api/domain/usecases/get_populer.dart';
import 'package:movie_with_api/domain/usecases/get_trending.dart';

final getItinstance = GetIt.I;

Future init() async {
  getItinstance.registerLazySingleton<Client>((() => Client()));
  getItinstance
      .registerLazySingleton<ApiClient>(() => ApiClient(getItinstance()));
  getItinstance.registerLazySingleton<MovieRemoteDataSource>(
      () => MovieRemoeDataSourceImpl(getItinstance()));
  getItinstance
      .registerLazySingleton<GetTrending>(() => GetTrending(getItinstance()));
  getItinstance
      .registerLazySingleton<GetPopuler>(() => GetPopuler(getItinstance()));
  getItinstance.registerLazySingleton<GetComingSoon>(
      () => GetComingSoon(getItinstance()));
  getItinstance.registerLazySingleton<GetPlayingNow>(
      () => GetPlayingNow(getItinstance()));
  getItinstance.registerLazySingleton<MovieRepository>(
      () => MovieRepositoryImpl(getItinstance()));
}
