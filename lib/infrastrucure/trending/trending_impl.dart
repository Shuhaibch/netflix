import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/cores/failures/main_failure.dart';
import 'package:netflix_app/domain/trendingNow/trendingService.dart';

import '../../domain/cores/api_end_points.dart';
import '../../domain/trendingNow/models/trending_now.dart';

@LazySingleton(as: TrendingService)
class Trendingimpl implements TrendingService {
  @override
  Future<Either<MainFailure, TrendingNow>> getTrendingData() async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.downloads,
      );
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = TrendingNow.fromJson(response.data);
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
