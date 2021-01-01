import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:movie_with_api/data/core/api_client.dart';
import 'package:movie_with_api/data/data_source/movie_remote_data_source.dart';
import 'package:movie_with_api/data/repositories/movie_repository_impl.dart';
import 'package:movie_with_api/domain/entities/movie.entity.dart';
import 'package:movie_with_api/domain/entities/no_params.dart';
import 'package:movie_with_api/domain/repositoories/movie_repository.dart';
import 'package:movie_with_api/domain/usecases/get_trending.dart';

import 'domain/entities/apperror_handaling.dart';

void main() async {
  ApiClient apiClient = ApiClient(Client());
  MovieRemoteDataSource dataSource = MovieRemoeDataSourceImpl(apiClient);
  MovieRepository movieRepository = MovieRepositoryImpl(dataSource);

  GetTrending getTrending = GetTrending(movieRepository);
  final Either<AppError, List<MovieEnity>> eitherResponse =
      await getTrending(NoParams());
  eitherResponse.fold(
    (l) {
      print('error');
      print(l);
    },
    (r) {
      print('list of movies');
      print(r);
    },
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(),
    );
  }
}
