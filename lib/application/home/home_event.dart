part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadDataInHomeScreen() = LoadDataInHomeScreen;
  const factory HomeEvent.clickDataInHomeScreen({required}) =
      ClickDataInHomeScreen;
}
