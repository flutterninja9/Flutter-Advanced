import 'package:dartz/dartz.dart';
import 'package:domain_driven_design/domain/core/errors.dart';
import 'package:domain_driven_design/domain/core/failures.dart';
import 'package:flutter/cupertino.dart';

// immutable is used for forcing the instantiation of only final fields insde the implementor classes
@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    return value.fold(
      (f) => throw UnexpectedValueError(f),
      // id : identitiy Same as writing (right) => right
      id,
    );
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value(value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
