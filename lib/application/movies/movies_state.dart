part of 'movies_bloc.dart';

@freezed
class MoviesState with _$MoviesState {
  const factory MoviesState({
    required List<MovieRespo> movieList,
    required List<int> addMyList,
    required bool isLoading,
    required bool isError,
  }) = _MoviesState;
  factory MoviesState.initial() => const MoviesState(
        movieList: [],
        isLoading: false,
        isError: false,
        addMyList: [],
      );
}
