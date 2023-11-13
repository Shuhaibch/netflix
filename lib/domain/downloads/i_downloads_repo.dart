import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/cores/failures/main_failure.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';

/* Calling api*/
abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages();
}
