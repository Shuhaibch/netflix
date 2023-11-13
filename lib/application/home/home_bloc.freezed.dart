// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDataInHomeScreen,
    required TResult Function(dynamic required) clickDataInHomeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDataInHomeScreen,
    TResult? Function(dynamic required)? clickDataInHomeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDataInHomeScreen,
    TResult Function(dynamic required)? clickDataInHomeScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDataInHomeScreen value) loadDataInHomeScreen,
    required TResult Function(ClickDataInHomeScreen value)
        clickDataInHomeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDataInHomeScreen value)? loadDataInHomeScreen,
    TResult? Function(ClickDataInHomeScreen value)? clickDataInHomeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDataInHomeScreen value)? loadDataInHomeScreen,
    TResult Function(ClickDataInHomeScreen value)? clickDataInHomeScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadDataInHomeScreenCopyWith<$Res> {
  factory _$$LoadDataInHomeScreenCopyWith(_$LoadDataInHomeScreen value,
          $Res Function(_$LoadDataInHomeScreen) then) =
      __$$LoadDataInHomeScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDataInHomeScreenCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadDataInHomeScreen>
    implements _$$LoadDataInHomeScreenCopyWith<$Res> {
  __$$LoadDataInHomeScreenCopyWithImpl(_$LoadDataInHomeScreen _value,
      $Res Function(_$LoadDataInHomeScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadDataInHomeScreen implements LoadDataInHomeScreen {
  const _$LoadDataInHomeScreen();

  @override
  String toString() {
    return 'HomeEvent.loadDataInHomeScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadDataInHomeScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDataInHomeScreen,
    required TResult Function(dynamic required) clickDataInHomeScreen,
  }) {
    return loadDataInHomeScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDataInHomeScreen,
    TResult? Function(dynamic required)? clickDataInHomeScreen,
  }) {
    return loadDataInHomeScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDataInHomeScreen,
    TResult Function(dynamic required)? clickDataInHomeScreen,
    required TResult orElse(),
  }) {
    if (loadDataInHomeScreen != null) {
      return loadDataInHomeScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDataInHomeScreen value) loadDataInHomeScreen,
    required TResult Function(ClickDataInHomeScreen value)
        clickDataInHomeScreen,
  }) {
    return loadDataInHomeScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDataInHomeScreen value)? loadDataInHomeScreen,
    TResult? Function(ClickDataInHomeScreen value)? clickDataInHomeScreen,
  }) {
    return loadDataInHomeScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDataInHomeScreen value)? loadDataInHomeScreen,
    TResult Function(ClickDataInHomeScreen value)? clickDataInHomeScreen,
    required TResult orElse(),
  }) {
    if (loadDataInHomeScreen != null) {
      return loadDataInHomeScreen(this);
    }
    return orElse();
  }
}

abstract class LoadDataInHomeScreen implements HomeEvent {
  const factory LoadDataInHomeScreen() = _$LoadDataInHomeScreen;
}

/// @nodoc
abstract class _$$ClickDataInHomeScreenCopyWith<$Res> {
  factory _$$ClickDataInHomeScreenCopyWith(_$ClickDataInHomeScreen value,
          $Res Function(_$ClickDataInHomeScreen) then) =
      __$$ClickDataInHomeScreenCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class __$$ClickDataInHomeScreenCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ClickDataInHomeScreen>
    implements _$$ClickDataInHomeScreenCopyWith<$Res> {
  __$$ClickDataInHomeScreenCopyWithImpl(_$ClickDataInHomeScreen _value,
      $Res Function(_$ClickDataInHomeScreen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required = freezed,
  }) {
    return _then(_$ClickDataInHomeScreen(
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc

class _$ClickDataInHomeScreen implements ClickDataInHomeScreen {
  const _$ClickDataInHomeScreen({this.required});

  @override
  final dynamic required;

  @override
  String toString() {
    return 'HomeEvent.clickDataInHomeScreen(required: $required)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickDataInHomeScreen &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClickDataInHomeScreenCopyWith<_$ClickDataInHomeScreen> get copyWith =>
      __$$ClickDataInHomeScreenCopyWithImpl<_$ClickDataInHomeScreen>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDataInHomeScreen,
    required TResult Function(dynamic required) clickDataInHomeScreen,
  }) {
    return clickDataInHomeScreen(required);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDataInHomeScreen,
    TResult? Function(dynamic required)? clickDataInHomeScreen,
  }) {
    return clickDataInHomeScreen?.call(required);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDataInHomeScreen,
    TResult Function(dynamic required)? clickDataInHomeScreen,
    required TResult orElse(),
  }) {
    if (clickDataInHomeScreen != null) {
      return clickDataInHomeScreen(required);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDataInHomeScreen value) loadDataInHomeScreen,
    required TResult Function(ClickDataInHomeScreen value)
        clickDataInHomeScreen,
  }) {
    return clickDataInHomeScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDataInHomeScreen value)? loadDataInHomeScreen,
    TResult? Function(ClickDataInHomeScreen value)? clickDataInHomeScreen,
  }) {
    return clickDataInHomeScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDataInHomeScreen value)? loadDataInHomeScreen,
    TResult Function(ClickDataInHomeScreen value)? clickDataInHomeScreen,
    required TResult orElse(),
  }) {
    if (clickDataInHomeScreen != null) {
      return clickDataInHomeScreen(this);
    }
    return orElse();
  }
}

abstract class ClickDataInHomeScreen implements HomeEvent {
  const factory ClickDataInHomeScreen({final dynamic required}) =
      _$ClickDataInHomeScreen;

  dynamic get required;
  @JsonKey(ignore: true)
  _$$ClickDataInHomeScreenCopyWith<_$ClickDataInHomeScreen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  String get stateId => throw _privateConstructorUsedError;
  List<HotAndNewData> get releasedIntThePastYearList =>
      throw _privateConstructorUsedError;
  List<Downloads> get trendingList => throw _privateConstructorUsedError;
  List<HotAndNewData> get tenseDramaList => throw _privateConstructorUsedError;
  List<HotAndNewData> get southIndianCinema =>
      throw _privateConstructorUsedError;
  List<TrendingData> get top10List => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {String stateId,
      List<HotAndNewData> releasedIntThePastYearList,
      List<Downloads> trendingList,
      List<HotAndNewData> tenseDramaList,
      List<HotAndNewData> southIndianCinema,
      List<TrendingData> top10List,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? releasedIntThePastYearList = null,
    Object? trendingList = null,
    Object? tenseDramaList = null,
    Object? southIndianCinema = null,
    Object? top10List = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      releasedIntThePastYearList: null == releasedIntThePastYearList
          ? _value.releasedIntThePastYearList
          : releasedIntThePastYearList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trendingList: null == trendingList
          ? _value.trendingList
          : trendingList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      tenseDramaList: null == tenseDramaList
          ? _value.tenseDramaList
          : tenseDramaList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      southIndianCinema: null == southIndianCinema
          ? _value.southIndianCinema
          : southIndianCinema // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      top10List: null == top10List
          ? _value.top10List
          : top10List // ignore: cast_nullable_to_non_nullable
              as List<TrendingData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stateId,
      List<HotAndNewData> releasedIntThePastYearList,
      List<Downloads> trendingList,
      List<HotAndNewData> tenseDramaList,
      List<HotAndNewData> southIndianCinema,
      List<TrendingData> top10List,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? releasedIntThePastYearList = null,
    Object? trendingList = null,
    Object? tenseDramaList = null,
    Object? southIndianCinema = null,
    Object? top10List = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$_Initial(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      releasedIntThePastYearList: null == releasedIntThePastYearList
          ? _value._releasedIntThePastYearList
          : releasedIntThePastYearList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trendingList: null == trendingList
          ? _value._trendingList
          : trendingList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      tenseDramaList: null == tenseDramaList
          ? _value._tenseDramaList
          : tenseDramaList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      southIndianCinema: null == southIndianCinema
          ? _value._southIndianCinema
          : southIndianCinema // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      top10List: null == top10List
          ? _value._top10List
          : top10List // ignore: cast_nullable_to_non_nullable
              as List<TrendingData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.stateId,
      required final List<HotAndNewData> releasedIntThePastYearList,
      required final List<Downloads> trendingList,
      required final List<HotAndNewData> tenseDramaList,
      required final List<HotAndNewData> southIndianCinema,
      required final List<TrendingData> top10List,
      required this.isLoading,
      required this.hasError})
      : _releasedIntThePastYearList = releasedIntThePastYearList,
        _trendingList = trendingList,
        _tenseDramaList = tenseDramaList,
        _southIndianCinema = southIndianCinema,
        _top10List = top10List;

  @override
  final String stateId;
  final List<HotAndNewData> _releasedIntThePastYearList;
  @override
  List<HotAndNewData> get releasedIntThePastYearList {
    if (_releasedIntThePastYearList is EqualUnmodifiableListView)
      return _releasedIntThePastYearList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_releasedIntThePastYearList);
  }

  final List<Downloads> _trendingList;
  @override
  List<Downloads> get trendingList {
    if (_trendingList is EqualUnmodifiableListView) return _trendingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingList);
  }

  final List<HotAndNewData> _tenseDramaList;
  @override
  List<HotAndNewData> get tenseDramaList {
    if (_tenseDramaList is EqualUnmodifiableListView) return _tenseDramaList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenseDramaList);
  }

  final List<HotAndNewData> _southIndianCinema;
  @override
  List<HotAndNewData> get southIndianCinema {
    if (_southIndianCinema is EqualUnmodifiableListView)
      return _southIndianCinema;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_southIndianCinema);
  }

  final List<TrendingData> _top10List;
  @override
  List<TrendingData> get top10List {
    if (_top10List is EqualUnmodifiableListView) return _top10List;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_top10List);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'HomeState(stateId: $stateId, releasedIntThePastYearList: $releasedIntThePastYearList, trendingList: $trendingList, tenseDramaList: $tenseDramaList, southIndianCinema: $southIndianCinema, top10List: $top10List, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            const DeepCollectionEquality().equals(
                other._releasedIntThePastYearList,
                _releasedIntThePastYearList) &&
            const DeepCollectionEquality()
                .equals(other._trendingList, _trendingList) &&
            const DeepCollectionEquality()
                .equals(other._tenseDramaList, _tenseDramaList) &&
            const DeepCollectionEquality()
                .equals(other._southIndianCinema, _southIndianCinema) &&
            const DeepCollectionEquality()
                .equals(other._top10List, _top10List) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateId,
      const DeepCollectionEquality().hash(_releasedIntThePastYearList),
      const DeepCollectionEquality().hash(_trendingList),
      const DeepCollectionEquality().hash(_tenseDramaList),
      const DeepCollectionEquality().hash(_southIndianCinema),
      const DeepCollectionEquality().hash(_top10List),
      isLoading,
      hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final String stateId,
      required final List<HotAndNewData> releasedIntThePastYearList,
      required final List<Downloads> trendingList,
      required final List<HotAndNewData> tenseDramaList,
      required final List<HotAndNewData> southIndianCinema,
      required final List<TrendingData> top10List,
      required final bool isLoading,
      required final bool hasError}) = _$_Initial;

  @override
  String get stateId;
  @override
  List<HotAndNewData> get releasedIntThePastYearList;
  @override
  List<Downloads> get trendingList;
  @override
  List<HotAndNewData> get tenseDramaList;
  @override
  List<HotAndNewData> get southIndianCinema;
  @override
  List<TrendingData> get top10List;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
