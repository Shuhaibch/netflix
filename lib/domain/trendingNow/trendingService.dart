import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/trendingNow/models/trending_now.dart';

import '../cores/failures/main_failure.dart';

abstract class TrendingService {
  Future<Either<MainFailure, TrendingNow>> getTrendingData();
}
