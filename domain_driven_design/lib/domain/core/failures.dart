import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

// abstract keyword not needed anymore in the freezed package
@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required String invalidValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required String invalidValue,
  }) = ShortPassword<T>;
}
