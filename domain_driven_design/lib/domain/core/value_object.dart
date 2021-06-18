// ignore: import_of_legacy_library_into_null_safe
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

import 'errors.dart';
import 'failures.dart';

// immutable is used for forcing the instantiation of only final fields inside the implementor classes
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

  /// Changes ValueFailure of any type into a universal [dynamic] type
  /// Helpful in support sustem usecase
  Either<ValueFailure, Unit> get failureOrUnit {
    return value.fold(
      (f) => left(f),
      (_) => right(unit),
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

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory UniqueId() {
    return UniqueId._(
      // insert validation
      right(const Uuid().v1()),
    );
  }

  /// Due to th non-nullable variable uniqueId, We don't have to cross check for uid being null
  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }
  const UniqueId._(this.value);
}
