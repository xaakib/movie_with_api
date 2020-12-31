import 'dart:convert';

import 'package:http/http.dart';
import 'package:movie_with_api/data/core/api_constants.dart';
import 'package:movie_with_api/data/models/movie_models.dart';
import 'package:movie_with_api/data/models/movies_result_model.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>> getTrending();
}

class MovieRemoeDataSourceImpl extends MovieRemoteDataSource {
  final Client _client;
  MovieRemoeDataSourceImpl(this._client);
  @override
  Future<List<MovieModel>> getTrending() async {
    final response = await _client.get(
      '${ApiConstants.BASE_IMAGE_URL}trending/movie/day?api_key=${ApiConstants.API_KEY}',
      headers: {
        'Content-Type': 'application/jason',
      },
    );
    if (response.statusCode == 200) {
      final resposeBody = json.decode(response.body);
      final movies = MoviesResultModel.fromJson(resposeBody).movies;
      print(movies);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
