part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String stateId,
    required List<HotAndNewData> releasedIntThePastYearList,
    required List<Downloads> trendingList,
    required List<HotAndNewData> tenseDramaList,
    required List<HotAndNewData> southIndianCinema,
    required List<TrendingData> top10List,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;
  factory HomeState.initial() => const HomeState(
        releasedIntThePastYearList: [],
        trendingList: [],
        tenseDramaList: [],
        southIndianCinema: [],
        top10List: [],
        isLoading: true,
        hasError: false,
        stateId: '0',
      );
}
