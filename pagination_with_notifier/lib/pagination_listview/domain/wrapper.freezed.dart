// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WrapperTearOff {
  const _$WrapperTearOff();

  _Wrapper<T> call<T>({required T entity, bool? isNextPageAvailable}) {
    return _Wrapper<T>(
      entity: entity,
      isNextPageAvailable: isNextPageAvailable,
    );
  }
}

/// @nodoc
const $Wrapper = _$WrapperTearOff();

/// @nodoc
mixin _$Wrapper<T> {
  T get entity => throw _privateConstructorUsedError;
  bool? get isNextPageAvailable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WrapperCopyWith<T, Wrapper<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WrapperCopyWith<T, $Res> {
  factory $WrapperCopyWith(Wrapper<T> value, $Res Function(Wrapper<T>) then) =
      _$WrapperCopyWithImpl<T, $Res>;
  $Res call({T entity, bool? isNextPageAvailable});
}

/// @nodoc
class _$WrapperCopyWithImpl<T, $Res> implements $WrapperCopyWith<T, $Res> {
  _$WrapperCopyWithImpl(this._value, this._then);

  final Wrapper<T> _value;
  // ignore: unused_field
  final $Res Function(Wrapper<T>) _then;

  @override
  $Res call({
    Object? entity = freezed,
    Object? isNextPageAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as T,
      isNextPageAvailable: isNextPageAvailable == freezed
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$WrapperCopyWith<T, $Res> implements $WrapperCopyWith<T, $Res> {
  factory _$WrapperCopyWith(
          _Wrapper<T> value, $Res Function(_Wrapper<T>) then) =
      __$WrapperCopyWithImpl<T, $Res>;
  @override
  $Res call({T entity, bool? isNextPageAvailable});
}

/// @nodoc
class __$WrapperCopyWithImpl<T, $Res> extends _$WrapperCopyWithImpl<T, $Res>
    implements _$WrapperCopyWith<T, $Res> {
  __$WrapperCopyWithImpl(_Wrapper<T> _value, $Res Function(_Wrapper<T>) _then)
      : super(_value, (v) => _then(v as _Wrapper<T>));

  @override
  _Wrapper<T> get _value => super._value as _Wrapper<T>;

  @override
  $Res call({
    Object? entity = freezed,
    Object? isNextPageAvailable = freezed,
  }) {
    return _then(_Wrapper<T>(
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as T,
      isNextPageAvailable: isNextPageAvailable == freezed
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Wrapper<T> extends _Wrapper<T> {
  const _$_Wrapper({required this.entity, this.isNextPageAvailable})
      : super._();

  @override
  final T entity;
  @override
  final bool? isNextPageAvailable;

  @override
  String toString() {
    return 'Wrapper<$T>(entity: $entity, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Wrapper<T> &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isNextPageAvailable, isNextPageAvailable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(isNextPageAvailable);

  @JsonKey(ignore: true)
  @override
  _$WrapperCopyWith<T, _Wrapper<T>> get copyWith =>
      __$WrapperCopyWithImpl<T, _Wrapper<T>>(this, _$identity);
}

abstract class _Wrapper<T> extends Wrapper<T> {
  const factory _Wrapper({required T entity, bool? isNextPageAvailable}) =
      _$_Wrapper<T>;
  const _Wrapper._() : super._();

  @override
  T get entity => throw _privateConstructorUsedError;
  @override
  bool? get isNextPageAvailable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WrapperCopyWith<T, _Wrapper<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
