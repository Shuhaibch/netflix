import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';
import '../../domain/cores/failures/main_failure.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>(
      (event, emit) async {
        if (state.downloads.isNotEmpty) {
          emit(DownloadsState(
              isLoading: false,
              downloads: state.downloads,
              downloadsFailureOrSuccesOption: none()));
        }

        emit(
          /* initial */
          state.copyWith(
            isLoading: true,
            downloadsFailureOrSuccesOption: none(),
          ),
        );
        /* calling api*/

        final Either<MainFailure, List<Downloads>> downloadsOption =
            await _downloadsRepo.getDownloadsImages();
        log(downloadsOption.toString());
        emit(
          downloadsOption.fold(
            (failure) => state.copyWith(
              isLoading: false,
              downloadsFailureOrSuccesOption: some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadsFailureOrSuccesOption: some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
  }
}
