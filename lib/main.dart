import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:movie_with_api/domain/entities/movie.entity.dart';
import 'package:movie_with_api/domain/entities/no_params.dart';
import 'package:movie_with_api/domain/usecases/get_trending.dart';

import 'domain/entities/apperror_handaling.dart';

import 'package:pedantic/pedantic.dart';
import 'di/get_it.dart' as getIt;

void main() async {
  unawaited(getIt.init());

  GetTrending getTrending = getIt.getItinstance<GetTrending>();
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
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  child: RichText(
                    text: TextSpan(
                      text: 'Hello  ',
                      style: TextStyle(color: Colors.blue),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'bold',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '     world!',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
