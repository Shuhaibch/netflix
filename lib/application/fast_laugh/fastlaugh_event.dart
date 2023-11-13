part of 'fastlaugh_bloc.dart';

@freezed
class FastlaughEvent with _$FastlaughEvent {
  const factory FastlaughEvent.initialize() = Initialize;
  const factory FastlaughEvent.likevideo({
    required int id,
  }) = Likevideo;
  const factory FastlaughEvent.unlikevideo({
    required int id,
  }) = Unlikevideo;
}
