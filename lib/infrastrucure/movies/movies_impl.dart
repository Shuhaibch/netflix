import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/cores/failures/main_failure.dart';
import 'package:netflix_app/domain/movie/models/movie_respo.dart';
import 'package:netflix_app/domain/movie/movie_service.dart';

import '../../domain/cores/api_end_points.dart';

@LazySingleton(as: MoviesService)
class MoviesImpl implements MoviesService {
  @override
  Future<Either<MainFailure, MovieRespo>> moviesDetails(
      {required String id}) async {
    // final query = "$ApiEndPoints.movies$id$ApiEndPoints.movies2";
    try {
      final Response response = await Dio(BaseOptions())
          .get(ApiEndPoints.movies + id + ApiEndPoints.movies2);
      // log(response.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        //  log(response.data);
        final result = MovieRespo.fromJson(response.data);
        // final result = (response.data).map((e) {
        //   return MovieRespo.fromJson(e);
        // }).toList();
        // log(result.toString());
        return Right(result);
      } else {
        //failure
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
