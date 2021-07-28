// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaginationStateTearOff {
  const _$PaginationStateTearOff();

  _PaginationState call(
      {required PaginationData data,
      required int pageRequest,
      required String? query}) {
    return _PaginationState(
      data: data,
      pageRequest: pageRequest,
      query: query,
    );
  }
}

/// @nodoc
const $PaginationState = _$PaginationStateTearOff();

/// @nodoc
mixin _$PaginationState {
  PaginationData get data => throw _privateConstructorUsedError;
  int get pageRequest => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationStateCopyWith<PaginationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationStateCopyWith<$Res> {
  factory $PaginationStateCopyWith(
          PaginationState value, $Res Function(PaginationState) then) =
      _$PaginationStateCopyWithImpl<$Res>;
  $Res call({PaginationData data, int pageRequest, String? query});

  $PaginationDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PaginationStateCopyWithImpl<$Res>
    implements $PaginationStateCopyWith<$Res> {
  _$PaginationStateCopyWithImpl(this._value, this._then);

  final PaginationState _value;
  // ignore: unused_field
  final $Res Function(PaginationState) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? pageRequest = freezed,
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginationData,
      pageRequest: pageRequest == freezed
          ? _value.pageRequest
          : pageRequest // ignore: cast_nullable_to_non_nullable
              as int,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $PaginationDataCopyWith<$Res> get data {
    return $PaginationDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$PaginationStateCopyWith<$Res>
    implements $PaginationStateCopyWith<$Res> {
  factory _$PaginationStateCopyWith(
          _PaginationState value, $Res Function(_PaginationState) then) =
      __$PaginationStateCopyWithImpl<$Res>;
  @override
  $Res call({PaginationData data, int pageRequest, String? query});

  @override
  $PaginationDataCopyWith<$Res> get data;
}

/// @nodoc
class __$PaginationStateCopyWithImpl<$Res>
    extends _$PaginationStateCopyWithImpl<$Res>
    implements _$PaginationStateCopyWith<$Res> {
  __$PaginationStateCopyWithImpl(
      _PaginationState _value, $Res Function(_PaginationState) _then)
      : super(_value, (v) => _then(v as _PaginationState));

  @override
  _PaginationState get _value => super._value as _PaginationState;

  @override
  $Res call({
    Object? data = freezed,
    Object? pageRequest = freezed,
    Object? query = freezed,
  }) {
    return _then(_PaginationState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginationData,
      pageRequest: pageRequest == freezed
          ? _value.pageRequest
          : pageRequest // ignore: cast_nullable_to_non_nullable
              as int,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PaginationState extends _PaginationState {
  const _$_PaginationState(
      {required this.data, required this.pageRequest, required this.query})
      : super._();

  @override
  final PaginationData data;
  @override
  final int pageRequest;
  @override
  final String? query;

  @override
  String toString() {
    return 'PaginationState(data: $data, pageRequest: $pageRequest, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaginationState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.pageRequest, pageRequest) ||
                const DeepCollectionEquality()
                    .equals(other.pageRequest, pageRequest)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(pageRequest) ^
      const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$PaginationStateCopyWith<_PaginationState> get copyWith =>
      __$PaginationStateCopyWithImpl<_PaginationState>(this, _$identity);
}

abstract class _PaginationState extends PaginationState {
  const factory _PaginationState(
      {required PaginationData data,
      required int pageRequest,
      required String? query}) = _$_PaginationState;
  const _PaginationState._() : super._();

  @override
  PaginationData get data => throw _privateConstructorUsedError;
  @override
  int get pageRequest => throw _privateConstructorUsedError;
  @override
  String? get query => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaginationStateCopyWith<_PaginationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PaginationDataTearOff {
  const _$PaginationDataTearOff();

  _PaginationData call(
      {required List<Result>? results,
      required dynamic error,
      required int nextPage}) {
    return _PaginationData(
      results: results,
      error: error,
      nextPage: nextPage,
    );
  }
}

/// @nodoc
const $PaginationData = _$PaginationDataTearOff();

/// @nodoc
mixin _$PaginationData {
  List<Result>? get results => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  int get nextPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationDataCopyWith<PaginationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationDataCopyWith<$Res> {
  factory $PaginationDataCopyWith(
          PaginationData value, $Res Function(PaginationData) then) =
      _$PaginationDataCopyWithImpl<$Res>;
  $Res call({List<Result>? results, dynamic error, int nextPage});
}

/// @nodoc
class _$PaginationDataCopyWithImpl<$Res>
    implements $PaginationDataCopyWith<$Res> {
  _$PaginationDataCopyWithImpl(this._value, this._then);

  final PaginationData _value;
  // ignore: unused_field
  final $Res Function(PaginationData) _then;

  @override
  $Res call({
    Object? results = freezed,
    Object? error = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PaginationDataCopyWith<$Res>
    implements $PaginationDataCopyWith<$Res> {
  factory _$PaginationDataCopyWith(
          _PaginationData value, $Res Function(_PaginationData) then) =
      __$PaginationDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Result>? results, dynamic error, int nextPage});
}

/// @nodoc
class __$PaginationDataCopyWithImpl<$Res>
    extends _$PaginationDataCopyWithImpl<$Res>
    implements _$PaginationDataCopyWith<$Res> {
  __$PaginationDataCopyWithImpl(
      _PaginationData _value, $Res Function(_PaginationData) _then)
      : super(_value, (v) => _then(v as _PaginationData));

  @override
  _PaginationData get _value => super._value as _PaginationData;

  @override
  $Res call({
    Object? results = freezed,
    Object? error = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_PaginationData(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PaginationData extends _PaginationData {
  const _$_PaginationData(
      {required this.results, required this.error, required this.nextPage})
      : super._();

  @override
  final List<Result>? results;
  @override
  final dynamic error;
  @override
  final int nextPage;

  @override
  String toString() {
    return 'PaginationData(results: $results, error: $error, nextPage: $nextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaginationData &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.nextPage, nextPage) ||
                const DeepCollectionEquality()
                    .equals(other.nextPage, nextPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(nextPage);

  @JsonKey(ignore: true)
  @override
  _$PaginationDataCopyWith<_PaginationData> get copyWith =>
      __$PaginationDataCopyWithImpl<_PaginationData>(this, _$identity);
}

abstract class _PaginationData extends PaginationData {
  const factory _PaginationData(
      {required List<Result>? results,
      required dynamic error,
      required int nextPage}) = _$_PaginationData;
  const _PaginationData._() : super._();

  @override
  List<Result>? get results => throw _privateConstructorUsedError;
  @override
  dynamic get error => throw _privateConstructorUsedError;
  @override
  int get nextPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaginationDataCopyWith<_PaginationData> get copyWith =>
      throw _privateConstructorUsedError;
}
