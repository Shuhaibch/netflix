// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/cores/failures/main_failure.dart';
import 'package:netflix_app/domain/hot_and_new/hot_and_new_service.dart';

import '../../domain/downloads/i_downloads_repo.dart';
import '../../domain/downloads/models/downloads.dart';
import '../../domain/hot_and_new/models/hot_and_new_resp.dart';
import '../../domain/trendingNow/models/trending_now.dart';
import '../../domain/trendingNow/trendingService.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HotAndNewService _homeReleasedService;
  final IDownloadsRepo _trendingService;
  final TrendingService _top10Service;

  HomeBloc(this._homeReleasedService, this._trendingService, this._top10Service)
      : super(HomeState.initial()) {
    //load Release
    on<LoadDataInHomeScreen>((event, emit) async {
      log('getting data');

      //home loading
      emit(state.copyWith(isLoading: true, hasError: false));

      final _releaseResult = await _homeReleasedService.getHotAndNewMovieData();
      final _trendingResult = await _trendingService.getDownloadsImages();
      final _southResult = await _homeReleasedService.getHotAndNewTvData();
      final _top10Result = await _top10Service.getTrendingData();
      // log(_releaseResult.toString());
      final _newState = _releaseResult.fold((MainFailure failure) {
        // show error
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          releasedIntThePastYearList: [],
          isLoading: false,
          hasError: true,
          trendingList: [],
          tenseDramaList: [],
          southIndianCinema: [],
          top10List: [],
        );
      }, (HotAndNewResp resp) {
        final pastYear = resp.results;
        final tense = resp.results;
        pastYear.shuffle();
        tense.shuffle();

        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          releasedIntThePastYearList: pastYear,
          trendingList: state.trendingList,
          tenseDramaList: tense,
          southIndianCinema: state.southIndianCinema,
          top10List: state.top10List,
          isLoading: false,
          hasError: false,
        );
      });
      emit(_newState);

      // trending image

      final _trendingState = _trendingResult.fold((MainFailure failure) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          releasedIntThePastYearList: [],
          isLoading: false,
          hasError: true,
          trendingList: [],
          tenseDramaList: [],
          southIndianCinema: [],
          top10List: [],
        );
      }, (resp) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          releasedIntThePastYearList: state.releasedIntThePastYearList,
          trendingList: resp,
          tenseDramaList: state.tenseDramaList,
          southIndianCinema: state.southIndianCinema,
          top10List: state.top10List,
          isLoading: false,
          hasError: false,
        );
      });
      emit(_trendingState);

      final _southState = _southResult.fold((MainFailure failure) {
        // show error
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          releasedIntThePastYearList: [],
          isLoading: false,
          hasError: true,
          trendingList: [],
          tenseDramaList: [],
          southIndianCinema: [],
          top10List: [],
        );
      }, (HotAndNewResp resp) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          releasedIntThePastYearList: state.releasedIntThePastYearList,
          trendingList: state.trendingList,
          tenseDramaList: state.tenseDramaList,
          southIndianCinema: resp.results,
          top10List: state.top10List,
          isLoading: false,
          hasError: false,
        );
      });
      emit(_southState);

      //top 10
      final _top10State = _top10Result.fold((MainFailure failure) {
        // show error
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          releasedIntThePastYearList: [],
          isLoading: false,
          hasError: true,
          trendingList: [],
          tenseDramaList: [],
          southIndianCinema: [],
          top10List: [],
        );
      }, (TrendingNow resp) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          releasedIntThePastYearList: state.releasedIntThePastYearList,
          trendingList: state.trendingList,
          tenseDramaList: state.tenseDramaList,
          southIndianCinema: state.southIndianCinema,
          top10List: resp.results,
          isLoading: false,
          hasError: false,
        );
      });
      emit(_top10State);
    });

    // south indian
  }
}
