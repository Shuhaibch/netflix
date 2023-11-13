import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/cores/failures/main_failure.dart';
import 'package:netflix_app/domain/movie/movie_service.dart';
import 'package:netflix_app/domain/my_list/my_list.dart';

import '../../domain/movie/models/movie_respo.dart';

part 'movies_event.dart';
part 'movies_state.dart';
part 'movies_bloc.freezed.dart';

@injectable
class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final MoviesService _moviesService;
  MoviesBloc(this._moviesService) : super(MoviesState.initial()) {
    on<Initialize>((event, emit) async {
      // loading in ui
      emit(
        const MoviesState(
          movieList: [],
          isLoading: true,
          isError: false,
          addMyList: [],
        ),
      );

      //calling api
      final result = await _moviesService.moviesDetails(id: event.id);
      log(result.toString());

      //creating state
      final newState = result.fold((MainFailure failure) {
        return const MoviesState(
          movieList: [],
          isLoading: false,
          isError: true,
          addMyList: [],
        );
      }, (MovieRespo result) {
        return MoviesState(
            movieList: [result],
            isLoading: false,
            isError: false,
            addMyList: state.addMyList);
      });
      emit(newState);
    });
    on<AddMyList>(
      (event, emit) async {
        //  myListId
        MyList().myListId.add(event.movieRespo);
        emit(state);
      },
    );
    on<RemoveMyList>(
      (event, emit) async {
        MyList().myListId.remove(event.movieRespo);
      },
    );
  }
}
