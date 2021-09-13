// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connectivity_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConnectionStateTearOff {
  const _$ConnectionStateTearOff();

  _Initial initial({required bool showPopUp}) {
    return _Initial(
      showPopUp: showPopUp,
    );
  }

  _IsConnected isConnected({required bool showPopUp}) {
    return _IsConnected(
      showPopUp: showPopUp,
    );
  }

  _IsDisconnected isDisconnected({required bool showPopUp}) {
    return _IsDisconnected(
      showPopUp: showPopUp,
    );
  }
}

/// @nodoc
const $ConnectionState = _$ConnectionStateTearOff();

/// @nodoc
mixin _$ConnectionState {
  bool get showPopUp => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showPopUp) initial,
    required TResult Function(bool showPopUp) isConnected,
    required TResult Function(bool showPopUp) isDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool showPopUp)? initial,
    TResult Function(bool showPopUp)? isConnected,
    TResult Function(bool showPopUp)? isDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showPopUp)? initial,
    TResult Function(bool showPopUp)? isConnected,
    TResult Function(bool showPopUp)? isDisconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsConnected value) isConnected,
    required TResult Function(_IsDisconnected value) isDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsConnected value)? isConnected,
    TResult Function(_IsDisconnected value)? isDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsConnected value)? isConnected,
    TResult Function(_IsDisconnected value)? isDisconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionStateCopyWith<ConnectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionStateCopyWith<$Res> {
  factory $ConnectionStateCopyWith(
          ConnectionState value, $Res Function(ConnectionState) then) =
      _$ConnectionStateCopyWithImpl<$Res>;
  $Res call({bool showPopUp});
}

/// @nodoc
class _$ConnectionStateCopyWithImpl<$Res>
    implements $ConnectionStateCopyWith<$Res> {
  _$ConnectionStateCopyWithImpl(this._value, this._then);

  final ConnectionState _value;
  // ignore: unused_field
  final $Res Function(ConnectionState) _then;

  @override
  $Res call({
    Object? showPopUp = freezed,
  }) {
    return _then(_value.copyWith(
      showPopUp: showPopUp == freezed
          ? _value.showPopUp
          : showPopUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $ConnectionStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({bool showPopUp});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ConnectionStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? showPopUp = freezed,
  }) {
    return _then(_Initial(
      showPopUp: showPopUp == freezed
          ? _value.showPopUp
          : showPopUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.showPopUp}) : super._();

  @override
  final bool showPopUp;

  @override
  String toString() {
    return 'ConnectionState.initial(showPopUp: $showPopUp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.showPopUp, showPopUp) ||
                const DeepCollectionEquality()
                    .equals(other.showPopUp, showPopUp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(showPopUp);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showPopUp) initial,
    required TResult Function(bool showPopUp) isConnected,
    required TResult Function(bool showPopUp) isDisconnected,
  }) {
    return initial(showPopUp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool showPopUp)? initial,
    TResult Function(bool showPopUp)? isConnected,
    TResult Function(bool showPopUp)? isDisconnected,
  }) {
    return initial?.call(showPopUp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showPopUp)? initial,
    TResult Function(bool showPopUp)? isConnected,
    TResult Function(bool showPopUp)? isDisconnected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(showPopUp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsConnected value) isConnected,
    required TResult Function(_IsDisconnected value) isDisconnected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsConnected value)? isConnected,
    TResult Function(_IsDisconnected value)? isDisconnected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsConnected value)? isConnected,
    TResult Function(_IsDisconnected value)? isDisconnected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends ConnectionState {
  const factory _Initial({required bool showPopUp}) = _$_Initial;
  const _Initial._() : super._();

  @override
  bool get showPopUp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IsConnectedCopyWith<$Res>
    implements $ConnectionStateCopyWith<$Res> {
  factory _$IsConnectedCopyWith(
          _IsConnected value, $Res Function(_IsConnected) then) =
      __$IsConnectedCopyWithImpl<$Res>;
  @override
  $Res call({bool showPopUp});
}

/// @nodoc
class __$IsConnectedCopyWithImpl<$Res>
    extends _$ConnectionStateCopyWithImpl<$Res>
    implements _$IsConnectedCopyWith<$Res> {
  __$IsConnectedCopyWithImpl(
      _IsConnected _value, $Res Function(_IsConnected) _then)
      : super(_value, (v) => _then(v as _IsConnected));

  @override
  _IsConnected get _value => super._value as _IsConnected;

  @override
  $Res call({
    Object? showPopUp = freezed,
  }) {
    return _then(_IsConnected(
      showPopUp: showPopUp == freezed
          ? _value.showPopUp
          : showPopUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsConnected extends _IsConnected {
  const _$_IsConnected({required this.showPopUp}) : super._();

  @override
  final bool showPopUp;

  @override
  String toString() {
    return 'ConnectionState.isConnected(showPopUp: $showPopUp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsConnected &&
            (identical(other.showPopUp, showPopUp) ||
                const DeepCollectionEquality()
                    .equals(other.showPopUp, showPopUp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(showPopUp);

  @JsonKey(ignore: true)
  @override
  _$IsConnectedCopyWith<_IsConnected> get copyWith =>
      __$IsConnectedCopyWithImpl<_IsConnected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showPopUp) initial,
    required TResult Function(bool showPopUp) isConnected,
    required TResult Function(bool showPopUp) isDisconnected,
  }) {
    return isConnected(showPopUp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool showPopUp)? initial,
    TResult Function(bool showPopUp)? isConnected,
    TResult Function(bool showPopUp)? isDisconnected,
  }) {
    return isConnected?.call(showPopUp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showPopUp)? initial,
    TResult Function(bool showPopUp)? isConnected,
    TResult Function(bool showPopUp)? isDisconnected,
    required TResult orElse(),
  }) {
    if (isConnected != null) {
      return isConnected(showPopUp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsConnected value) isConnected,
    required TResult Function(_IsDisconnected value) isDisconnected,
  }) {
    return isConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsConnected value)? isConnected,
    TResult Function(_IsDisconnected value)? isDisconnected,
  }) {
    return isConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsConnected value)? isConnected,
    TResult Function(_IsDisconnected value)? isDisconnected,
    required TResult orElse(),
  }) {
    if (isConnected != null) {
      return isConnected(this);
    }
    return orElse();
  }
}

abstract class _IsConnected extends ConnectionState {
  const factory _IsConnected({required bool showPopUp}) = _$_IsConnected;
  const _IsConnected._() : super._();

  @override
  bool get showPopUp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IsConnectedCopyWith<_IsConnected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IsDisconnectedCopyWith<$Res>
    implements $ConnectionStateCopyWith<$Res> {
  factory _$IsDisconnectedCopyWith(
          _IsDisconnected value, $Res Function(_IsDisconnected) then) =
      __$IsDisconnectedCopyWithImpl<$Res>;
  @override
  $Res call({bool showPopUp});
}

/// @nodoc
class __$IsDisconnectedCopyWithImpl<$Res>
    extends _$ConnectionStateCopyWithImpl<$Res>
    implements _$IsDisconnectedCopyWith<$Res> {
  __$IsDisconnectedCopyWithImpl(
      _IsDisconnected _value, $Res Function(_IsDisconnected) _then)
      : super(_value, (v) => _then(v as _IsDisconnected));

  @override
  _IsDisconnected get _value => super._value as _IsDisconnected;

  @override
  $Res call({
    Object? showPopUp = freezed,
  }) {
    return _then(_IsDisconnected(
      showPopUp: showPopUp == freezed
          ? _value.showPopUp
          : showPopUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsDisconnected extends _IsDisconnected {
  const _$_IsDisconnected({required this.showPopUp}) : super._();

  @override
  final bool showPopUp;

  @override
  String toString() {
    return 'ConnectionState.isDisconnected(showPopUp: $showPopUp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsDisconnected &&
            (identical(other.showPopUp, showPopUp) ||
                const DeepCollectionEquality()
                    .equals(other.showPopUp, showPopUp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(showPopUp);

  @JsonKey(ignore: true)
  @override
  _$IsDisconnectedCopyWith<_IsDisconnected> get copyWith =>
      __$IsDisconnectedCopyWithImpl<_IsDisconnected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showPopUp) initial,
    required TResult Function(bool showPopUp) isConnected,
    required TResult Function(bool showPopUp) isDisconnected,
  }) {
    return isDisconnected(showPopUp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool showPopUp)? initial,
    TResult Function(bool showPopUp)? isConnected,
    TResult Function(bool showPopUp)? isDisconnected,
  }) {
    return isDisconnected?.call(showPopUp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showPopUp)? initial,
    TResult Function(bool showPopUp)? isConnected,
    TResult Function(bool showPopUp)? isDisconnected,
    required TResult orElse(),
  }) {
    if (isDisconnected != null) {
      return isDisconnected(showPopUp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsConnected value) isConnected,
    required TResult Function(_IsDisconnected value) isDisconnected,
  }) {
    return isDisconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsConnected value)? isConnected,
    TResult Function(_IsDisconnected value)? isDisconnected,
  }) {
    return isDisconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsConnected value)? isConnected,
    TResult Function(_IsDisconnected value)? isDisconnected,
    required TResult orElse(),
  }) {
    if (isDisconnected != null) {
      return isDisconnected(this);
    }
    return orElse();
  }
}

abstract class _IsDisconnected extends ConnectionState {
  const factory _IsDisconnected({required bool showPopUp}) = _$_IsDisconnected;
  const _IsDisconnected._() : super._();

  @override
  bool get showPopUp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IsDisconnectedCopyWith<_IsDisconnected> get copyWith =>
      throw _privateConstructorUsedError;
}
