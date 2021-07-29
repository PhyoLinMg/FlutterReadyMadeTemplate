import 'package:freezed_annotation/freezed_annotation.dart';

part 'wrapper.freezed.dart';

@freezed
class Wrapper<T> with _$Wrapper<T> {
  const Wrapper._();
  const factory Wrapper({
    required T entity,
    bool? isNextPageAvailable,
  }) = _Wrapper<T>;

  factory Wrapper.get(
    T entity, {
    bool? isNextPageAvailable,
  }) =>
      Wrapper(
        entity: entity,
        isNextPageAvailable: isNextPageAvailable,
      );
}
