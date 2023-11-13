// ignore_for_file: no_leading_underscores_for_local_identifiers, invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/cores/failures/main_failure.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';

part 'fastlaugh_event.dart';
part 'fastlaugh_state.dart';
part 'fastlaugh_bloc.freezed.dart';

final dummyvideoUrl = [
  'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
];

ValueNotifier<Set<int>> likedVideosidsNotiifer = ValueNotifier({});

@injectable
class FastlaughBloc extends Bloc<FastlaughEvent, FastlaughState> {
  FastlaughBloc(
    IDownloadsRepo _downloadsService,
  ) : super(FastlaughState.initial()) {
    on<Initialize>(
      (event, emit) async {
        // sending loading
        emit(const FastlaughState(
          videoList: [],
          isLoading: true,
          isError: false,
        ));

        // get treanding
        final _result = await _downloadsService.getDownloadsImages();
        final _state = _result.fold(
          (MainFailure f) {
            return const FastlaughState(
              videoList: [],
              isLoading: false,
              isError: true,
            );
          },
          (success) {
            return FastlaughState(
              videoList: success,
              isLoading: false,
              isError: false,
            );
          },
        );
        //send to ui
        emit(_state);
      },
    );

    on<Likevideo>((event, emit) async {
      likedVideosidsNotiifer.value.add(event.id);
      likedVideosidsNotiifer.notifyListeners();
    });
    on<Unlikevideo>((event, emit) async {
      likedVideosidsNotiifer.value.remove(event.id);
      likedVideosidsNotiifer.notifyListeners();
    });
  }
}
