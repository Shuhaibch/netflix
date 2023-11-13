// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoviesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialize,
    required TResult Function(MovieRespo movieRespo) addMyList,
    required TResult Function(MovieRespo movieRespo) removeMyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? initialize,
    TResult? Function(MovieRespo movieRespo)? addMyList,
    TResult? Function(MovieRespo movieRespo)? removeMyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialize,
    TResult Function(MovieRespo movieRespo)? addMyList,
    TResult Function(MovieRespo movieRespo)? removeMyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddMyList value) addMyList,
    required TResult Function(RemoveMyList value) removeMyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(AddMyList value)? addMyList,
    TResult? Function(RemoveMyList value)? removeMyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddMyList value)? addMyList,
    TResult Function(RemoveMyList value)? removeMyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesEventCopyWith<$Res> {
  factory $MoviesEventCopyWith(
          MoviesEvent value, $Res Function(MoviesEvent) then) =
      _$MoviesEventCopyWithImpl<$Res, MoviesEvent>;
}

/// @nodoc
class _$MoviesEventCopyWithImpl<$Res, $Val extends MoviesEvent>
    implements $MoviesEventCopyWith<$Res> {
  _$MoviesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeCopyWith<$Res> {
  factory _$$InitializeCopyWith(
          _$Initialize value, $Res Function(_$Initialize) then) =
      __$$InitializeCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$InitializeCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$Initialize>
    implements _$$InitializeCopyWith<$Res> {
  __$$InitializeCopyWithImpl(
      _$Initialize _value, $Res Function(_$Initialize) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$Initialize(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'MoviesEvent.initialize(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initialize &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeCopyWith<_$Initialize> get copyWith =>
      __$$InitializeCopyWithImpl<_$Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialize,
    required TResult Function(MovieRespo movieRespo) addMyList,
    required TResult Function(MovieRespo movieRespo) removeMyList,
  }) {
    return initialize(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? initialize,
    TResult? Function(MovieRespo movieRespo)? addMyList,
    TResult? Function(MovieRespo movieRespo)? removeMyList,
  }) {
    return initialize?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialize,
    TResult Function(MovieRespo movieRespo)? addMyList,
    TResult Function(MovieRespo movieRespo)? removeMyList,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddMyList value) addMyList,
    required TResult Function(RemoveMyList value) removeMyList,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(AddMyList value)? addMyList,
    TResult? Function(RemoveMyList value)? removeMyList,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddMyList value)? addMyList,
    TResult Function(RemoveMyList value)? removeMyList,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements MoviesEvent {
  const factory Initialize({required final String id}) = _$Initialize;

  String get id;
  @JsonKey(ignore: true)
  _$$InitializeCopyWith<_$Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddMyListCopyWith<$Res> {
  factory _$$AddMyListCopyWith(
          _$AddMyList value, $Res Function(_$AddMyList) then) =
      __$$AddMyListCopyWithImpl<$Res>;
  @useResult
  $Res call({MovieRespo movieRespo});
}

/// @nodoc
class __$$AddMyListCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$AddMyList>
    implements _$$AddMyListCopyWith<$Res> {
  __$$AddMyListCopyWithImpl(
      _$AddMyList _value, $Res Function(_$AddMyList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieRespo = null,
  }) {
    return _then(_$AddMyList(
      movieRespo: null == movieRespo
          ? _value.movieRespo
          : movieRespo // ignore: cast_nullable_to_non_nullable
              as MovieRespo,
    ));
  }
}

/// @nodoc

class _$AddMyList implements AddMyList {
  _$AddMyList({required this.movieRespo});

  @override
  final MovieRespo movieRespo;

  @override
  String toString() {
    return 'MoviesEvent.addMyList(movieRespo: $movieRespo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMyList &&
            (identical(other.movieRespo, movieRespo) ||
                other.movieRespo == movieRespo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieRespo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMyListCopyWith<_$AddMyList> get copyWith =>
      __$$AddMyListCopyWithImpl<_$AddMyList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialize,
    required TResult Function(MovieRespo movieRespo) addMyList,
    required TResult Function(MovieRespo movieRespo) removeMyList,
  }) {
    return addMyList(movieRespo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? initialize,
    TResult? Function(MovieRespo movieRespo)? addMyList,
    TResult? Function(MovieRespo movieRespo)? removeMyList,
  }) {
    return addMyList?.call(movieRespo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialize,
    TResult Function(MovieRespo movieRespo)? addMyList,
    TResult Function(MovieRespo movieRespo)? removeMyList,
    required TResult orElse(),
  }) {
    if (addMyList != null) {
      return addMyList(movieRespo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddMyList value) addMyList,
    required TResult Function(RemoveMyList value) removeMyList,
  }) {
    return addMyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(AddMyList value)? addMyList,
    TResult? Function(RemoveMyList value)? removeMyList,
  }) {
    return addMyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddMyList value)? addMyList,
    TResult Function(RemoveMyList value)? removeMyList,
    required TResult orElse(),
  }) {
    if (addMyList != null) {
      return addMyList(this);
    }
    return orElse();
  }
}

abstract class AddMyList implements MoviesEvent {
  factory AddMyList({required final MovieRespo movieRespo}) = _$AddMyList;

  MovieRespo get movieRespo;
  @JsonKey(ignore: true)
  _$$AddMyListCopyWith<_$AddMyList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveMyListCopyWith<$Res> {
  factory _$$RemoveMyListCopyWith(
          _$RemoveMyList value, $Res Function(_$RemoveMyList) then) =
      __$$RemoveMyListCopyWithImpl<$Res>;
  @useResult
  $Res call({MovieRespo movieRespo});
}

/// @nodoc
class __$$RemoveMyListCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$RemoveMyList>
    implements _$$RemoveMyListCopyWith<$Res> {
  __$$RemoveMyListCopyWithImpl(
      _$RemoveMyList _value, $Res Function(_$RemoveMyList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieRespo = null,
  }) {
    return _then(_$RemoveMyList(
      movieRespo: null == movieRespo
          ? _value.movieRespo
          : movieRespo // ignore: cast_nullable_to_non_nullable
              as MovieRespo,
    ));
  }
}

/// @nodoc

class _$RemoveMyList implements RemoveMyList {
  _$RemoveMyList({required this.movieRespo});

  @override
  final MovieRespo movieRespo;

  @override
  String toString() {
    return 'MoviesEvent.removeMyList(movieRespo: $movieRespo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveMyList &&
            (identical(other.movieRespo, movieRespo) ||
                other.movieRespo == movieRespo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieRespo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveMyListCopyWith<_$RemoveMyList> get copyWith =>
      __$$RemoveMyListCopyWithImpl<_$RemoveMyList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialize,
    required TResult Function(MovieRespo movieRespo) addMyList,
    required TResult Function(MovieRespo movieRespo) removeMyList,
  }) {
    return removeMyList(movieRespo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? initialize,
    TResult? Function(MovieRespo movieRespo)? addMyList,
    TResult? Function(MovieRespo movieRespo)? removeMyList,
  }) {
    return removeMyList?.call(movieRespo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialize,
    TResult Function(MovieRespo movieRespo)? addMyList,
    TResult Function(MovieRespo movieRespo)? removeMyList,
    required TResult orElse(),
  }) {
    if (removeMyList != null) {
      return removeMyList(movieRespo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddMyList value) addMyList,
    required TResult Function(RemoveMyList value) removeMyList,
  }) {
    return removeMyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(AddMyList value)? addMyList,
    TResult? Function(RemoveMyList value)? removeMyList,
  }) {
    return removeMyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddMyList value)? addMyList,
    TResult Function(RemoveMyList value)? removeMyList,
    required TResult orElse(),
  }) {
    if (removeMyList != null) {
      return removeMyList(this);
    }
    return orElse();
  }
}

abstract class RemoveMyList implements MoviesEvent {
  factory RemoveMyList({required final MovieRespo movieRespo}) = _$RemoveMyList;

  MovieRespo get movieRespo;
  @JsonKey(ignore: true)
  _$$RemoveMyListCopyWith<_$RemoveMyList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MoviesState {
  List<MovieRespo> get movieList => throw _privateConstructorUsedError;
  List<int> get addMyList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesStateCopyWith<MoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) then) =
      _$MoviesStateCopyWithImpl<$Res, MoviesState>;
  @useResult
  $Res call(
      {List<MovieRespo> movieList,
      List<int> addMyList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res, $Val extends MoviesState>
    implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieList = null,
    Object? addMyList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      movieList: null == movieList
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<MovieRespo>,
      addMyList: null == addMyList
          ? _value.addMyList
          : addMyList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MoviesStateCopyWith<$Res>
    implements $MoviesStateCopyWith<$Res> {
  factory _$$_MoviesStateCopyWith(
          _$_MoviesState value, $Res Function(_$_MoviesState) then) =
      __$$_MoviesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MovieRespo> movieList,
      List<int> addMyList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_MoviesStateCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res, _$_MoviesState>
    implements _$$_MoviesStateCopyWith<$Res> {
  __$$_MoviesStateCopyWithImpl(
      _$_MoviesState _value, $Res Function(_$_MoviesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieList = null,
    Object? addMyList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_MoviesState(
      movieList: null == movieList
          ? _value._movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<MovieRespo>,
      addMyList: null == addMyList
          ? _value._addMyList
          : addMyList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MoviesState implements _MoviesState {
  const _$_MoviesState(
      {required final List<MovieRespo> movieList,
      required final List<int> addMyList,
      required this.isLoading,
      required this.isError})
      : _movieList = movieList,
        _addMyList = addMyList;

  final List<MovieRespo> _movieList;
  @override
  List<MovieRespo> get movieList {
    if (_movieList is EqualUnmodifiableListView) return _movieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movieList);
  }

  final List<int> _addMyList;
  @override
  List<int> get addMyList {
    if (_addMyList is EqualUnmodifiableListView) return _addMyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addMyList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'MoviesState(movieList: $movieList, addMyList: $addMyList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoviesState &&
            const DeepCollectionEquality()
                .equals(other._movieList, _movieList) &&
            const DeepCollectionEquality()
                .equals(other._addMyList, _addMyList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_movieList),
      const DeepCollectionEquality().hash(_addMyList),
      isLoading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoviesStateCopyWith<_$_MoviesState> get copyWith =>
      __$$_MoviesStateCopyWithImpl<_$_MoviesState>(this, _$identity);
}

abstract class _MoviesState implements MoviesState {
  const factory _MoviesState(
      {required final List<MovieRespo> movieList,
      required final List<int> addMyList,
      required final bool isLoading,
      required final bool isError}) = _$_MoviesState;

  @override
  List<MovieRespo> get movieList;
  @override
  List<int> get addMyList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_MoviesStateCopyWith<_$_MoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}
