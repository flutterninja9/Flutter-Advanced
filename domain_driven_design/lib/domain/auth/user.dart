import 'package:domain_driven_design/domain/core/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

/// User class is an {Entity} & difference b/w entity and Value Object
/// is that entities can comprise of multiple value objects, They
/// don't have any validatoin-mechanism of their own
@freezed
class User with _$User {
  const factory User({
    required UniqueId uniqueId,
  }) = _User;
}
