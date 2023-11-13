import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/cores/failures/main_failure.dart';
import 'package:netflix_app/domain/movie/models/movie_respo.dart';

abstract class MoviesService {
  Future<Either<MainFailure, MovieRespo>> moviesDetails({
    required String id,
  });
}
