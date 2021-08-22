// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'paginate_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaginationStateTearOff {
  const _$PaginationStateTearOff();

  _Initial initial(Wrapper<List<Result>> results) {
    return _Initial(
      results,
    );
  }

  _LoadInProgress loadInProgress(Wrapper<List<Result>> results,
      {required int itemsPerPage}) {
    return _LoadInProgress(
      results,
      itemsPerPage: itemsPerPage,
    );
  }

  _LoadSuccess loadSuccess(Wrapper<List<Result>> results,
      {required bool isNextPageAvailable}) {
    return _LoadSuccess(
      results,
      isNextPageAvailable: isNextPageAvailable,
    );
  }

  _LoadFailure loadFailure(Wrapper<List<Result>> results, Exception failure) {
    return _LoadFailure(
      results,
      failure,
    );
  }
}

/// @nodoc
const $PaginationState = _$PaginationStateTearOff();

/// @nodoc
mixin _$PaginationState {
  Wrapper<List<Result>> get results => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Wrapper<List<Result>> results) initial,
    required TResult Function(Wrapper<List<Result>> results, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Wrapper<List<Result>> results, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Wrapper<List<Result>> results, Exception failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Wrapper<List<Result>> results)? initial,
    TResult Function(Wrapper<List<Result>> results, int itemsPerPage)?
        loadInProgress,
    TResult Function(Wrapper<List<Result>> results, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Wrapper<List<Result>> results, Exception failure)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationStateCopyWith<PaginationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationStateCopyWith<$Res> {
  factory $PaginationStateCopyWith(
          PaginationState value, $Res Function(PaginationState) then) =
      _$PaginationStateCopyWithImpl<$Res>;
  $Res call({Wrapper<List<Result>> results});

  $WrapperCopyWith<List<Result>, $Res> get results;
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
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Wrapper<List<Result>>,
    ));
  }

  @override
  $WrapperCopyWith<List<Result>, $Res> get results {
    return $WrapperCopyWith<List<Result>, $Res>(_value.results, (value) {
      return _then(_value.copyWith(results: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $PaginationStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Wrapper<List<Result>> results});

  @override
  $WrapperCopyWith<List<Result>, $Res> get results;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PaginationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_Initial(
      results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Wrapper<List<Result>>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.results) : super._();

  @override
  final Wrapper<List<Result>> results;

  @override
  String toString() {
    return 'PaginationState.initial(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Wrapper<List<Result>> results) initial,
    required TResult Function(Wrapper<List<Result>> results, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Wrapper<List<Result>> results, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Wrapper<List<Result>> results, Exception failure)
        loadFailure,
  }) {
    return initial(results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Wrapper<List<Result>> results)? initial,
    TResult Function(Wrapper<List<Result>> results, int itemsPerPage)?
        loadInProgress,
    TResult Function(Wrapper<List<Result>> results, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Wrapper<List<Result>> results, Exception failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends PaginationState {
  const factory _Initial(Wrapper<List<Result>> results) = _$_Initial;
  const _Initial._() : super._();

  @override
  Wrapper<List<Result>> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res>
    implements $PaginationStateCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
  @override
  $Res call({Wrapper<List<Result>> results, int itemsPerPage});

  @override
  $WrapperCopyWith<List<Result>, $Res> get results;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$PaginationStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;

  @override
  $Res call({
    Object? results = freezed,
    Object? itemsPerPage = freezed,
  }) {
    return _then(_LoadInProgress(
      results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Wrapper<List<Result>>,
      itemsPerPage: itemsPerPage == freezed
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress {
  const _$_LoadInProgress(this.results, {required this.itemsPerPage})
      : super._();

  @override
  final Wrapper<List<Result>> results;
  @override
  final int itemsPerPage;

  @override
  String toString() {
    return 'PaginationState.loadInProgress(results: $results, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadInProgress &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                const DeepCollectionEquality()
                    .equals(other.itemsPerPage, itemsPerPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(itemsPerPage);

  @JsonKey(ignore: true)
  @override
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      __$LoadInProgressCopyWithImpl<_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Wrapper<List<Result>> results) initial,
    required TResult Function(Wrapper<List<Result>> results, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Wrapper<List<Result>> results, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Wrapper<List<Result>> results, Exception failure)
        loadFailure,
  }) {
    return loadInProgress(results, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Wrapper<List<Result>> results)? initial,
    TResult Function(Wrapper<List<Result>> results, int itemsPerPage)?
        loadInProgress,
    TResult Function(Wrapper<List<Result>> results, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Wrapper<List<Result>> results, Exception failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(results, itemsPerPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress extends PaginationState {
  const factory _LoadInProgress(Wrapper<List<Result>> results,
      {required int itemsPerPage}) = _$_LoadInProgress;
  const _LoadInProgress._() : super._();

  @override
  Wrapper<List<Result>> get results => throw _privateConstructorUsedError;
  int get itemsPerPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res>
    implements $PaginationStateCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Wrapper<List<Result>> results, bool isNextPageAvailable});

  @override
  $WrapperCopyWith<List<Result>, $Res> get results;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$PaginationStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? results = freezed,
    Object? isNextPageAvailable = freezed,
  }) {
    return _then(_LoadSuccess(
      results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Wrapper<List<Result>>,
      isNextPageAvailable: isNextPageAvailable == freezed
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(this.results, {required this.isNextPageAvailable})
      : super._();

  @override
  final Wrapper<List<Result>> results;
  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'PaginationState.loadSuccess(results: $results, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isNextPageAvailable, isNextPageAvailable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(isNextPageAvailable);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Wrapper<List<Result>> results) initial,
    required TResult Function(Wrapper<List<Result>> results, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Wrapper<List<Result>> results, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Wrapper<List<Result>> results, Exception failure)
        loadFailure,
  }) {
    return loadSuccess(results, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Wrapper<List<Result>> results)? initial,
    TResult Function(Wrapper<List<Result>> results, int itemsPerPage)?
        loadInProgress,
    TResult Function(Wrapper<List<Result>> results, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Wrapper<List<Result>> results, Exception failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(results, isNextPageAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess extends PaginationState {
  const factory _LoadSuccess(Wrapper<List<Result>> results,
      {required bool isNextPageAvailable}) = _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  Wrapper<List<Result>> get results => throw _privateConstructorUsedError;
  bool get isNextPageAvailable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res>
    implements $PaginationStateCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({Wrapper<List<Result>> results, Exception failure});

  @override
  $WrapperCopyWith<List<Result>, $Res> get results;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$PaginationStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? results = freezed,
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Wrapper<List<Result>>,
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure {
  const _$_LoadFailure(this.results, this.failure) : super._();

  @override
  final Wrapper<List<Result>> results;
  @override
  final Exception failure;

  @override
  String toString() {
    return 'PaginationState.loadFailure(results: $results, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Wrapper<List<Result>> results) initial,
    required TResult Function(Wrapper<List<Result>> results, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Wrapper<List<Result>> results, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Wrapper<List<Result>> results, Exception failure)
        loadFailure,
  }) {
    return loadFailure(results, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Wrapper<List<Result>> results)? initial,
    TResult Function(Wrapper<List<Result>> results, int itemsPerPage)?
        loadInProgress,
    TResult Function(Wrapper<List<Result>> results, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Wrapper<List<Result>> results, Exception failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(results, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure extends PaginationState {
  const factory _LoadFailure(Wrapper<List<Result>> results, Exception failure) =
      _$_LoadFailure;
  const _LoadFailure._() : super._();

  @override
  Wrapper<List<Result>> get results => throw _privateConstructorUsedError;
  Exception get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
