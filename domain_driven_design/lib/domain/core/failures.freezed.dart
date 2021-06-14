// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  ExceedingLength<T> exceedingLength<T>(
      {required String failedValue, required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  Empty<T> empty<T>({required String failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  MultiLine<T> multiline<T>({required String failedValue}) {
    return MultiLine<T>(
      failedValue: failedValue,
    );
  }

  ListTooLong<T> listTooLong<T>(
      {required String failedValue, required int max}) {
    return ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  InvalidEmail<T> invalidEmail<T>({required String invalidValue}) {
    return InvalidEmail<T>(
      invalidValue: invalidValue,
    );
  }

  ShortPassword<T> shortPassword<T>({required String invalidValue}) {
    return ShortPassword<T>(
      invalidValue: invalidValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, int max) exceedingLength,
    required TResult Function(String failedValue) empty,
    required TResult Function(String failedValue) multiline,
    required TResult Function(String failedValue, int max) listTooLong,
    required TResult Function(String invalidValue) invalidEmail,
    required TResult Function(String invalidValue) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, int max)? exceedingLength,
    TResult Function(String failedValue)? empty,
    TResult Function(String failedValue)? multiline,
    TResult Function(String failedValue, int max)? listTooLong,
    TResult Function(String invalidValue)? invalidEmail,
    TResult Function(String invalidValue)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MultiLine<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({String failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({required this.failedValue, required this.max});

  @override
  final String failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, int max) exceedingLength,
    required TResult Function(String failedValue) empty,
    required TResult Function(String failedValue) multiline,
    required TResult Function(String failedValue, int max) listTooLong,
    required TResult Function(String invalidValue) invalidEmail,
    required TResult Function(String invalidValue) shortPassword,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, int max)? exceedingLength,
    TResult Function(String failedValue)? empty,
    TResult Function(String failedValue)? multiline,
    TResult Function(String failedValue, int max)? listTooLong,
    TResult Function(String invalidValue)? invalidEmail,
    TResult Function(String invalidValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MultiLine<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength(
      {required String failedValue, required int max}) = _$ExceedingLength<T>;

  String get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, int max) exceedingLength,
    required TResult Function(String failedValue) empty,
    required TResult Function(String failedValue) multiline,
    required TResult Function(String failedValue, int max) listTooLong,
    required TResult Function(String invalidValue) invalidEmail,
    required TResult Function(String invalidValue) shortPassword,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, int max)? exceedingLength,
    TResult Function(String failedValue)? empty,
    TResult Function(String failedValue)? multiline,
    TResult Function(String failedValue, int max)? listTooLong,
    TResult Function(String invalidValue)? invalidEmail,
    TResult Function(String invalidValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MultiLine<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required String failedValue}) = _$Empty<T>;

  String get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiLineCopyWith<T, $Res> {
  factory $MultiLineCopyWith(
          MultiLine<T> value, $Res Function(MultiLine<T>) then) =
      _$MultiLineCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$MultiLineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MultiLineCopyWith<T, $Res> {
  _$MultiLineCopyWithImpl(
      MultiLine<T> _value, $Res Function(MultiLine<T>) _then)
      : super(_value, (v) => _then(v as MultiLine<T>));

  @override
  MultiLine<T> get _value => super._value as MultiLine<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(MultiLine<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MultiLine<T> implements MultiLine<T> {
  const _$MultiLine({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MultiLine<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $MultiLineCopyWith<T, MultiLine<T>> get copyWith =>
      _$MultiLineCopyWithImpl<T, MultiLine<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, int max) exceedingLength,
    required TResult Function(String failedValue) empty,
    required TResult Function(String failedValue) multiline,
    required TResult Function(String failedValue, int max) listTooLong,
    required TResult Function(String invalidValue) invalidEmail,
    required TResult Function(String invalidValue) shortPassword,
  }) {
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, int max)? exceedingLength,
    TResult Function(String failedValue)? empty,
    TResult Function(String failedValue)? multiline,
    TResult Function(String failedValue, int max)? listTooLong,
    TResult Function(String invalidValue)? invalidEmail,
    TResult Function(String invalidValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MultiLine<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class MultiLine<T> implements ValueFailure<T> {
  const factory MultiLine({required String failedValue}) = _$MultiLine<T>;

  String get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultiLineCopyWith<T, MultiLine<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTooLongCopyWith<T, $Res> {
  factory $ListTooLongCopyWith(
          ListTooLong<T> value, $Res Function(ListTooLong<T>) then) =
      _$ListTooLongCopyWithImpl<T, $Res>;
  $Res call({String failedValue, int max});
}

/// @nodoc
class _$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ListTooLongCopyWith<T, $Res> {
  _$ListTooLongCopyWithImpl(
      ListTooLong<T> _value, $Res Function(ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as ListTooLong<T>));

  @override
  ListTooLong<T> get _value => super._value as ListTooLong<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(ListTooLong<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ListTooLong<T> implements ListTooLong<T> {
  const _$ListTooLong({required this.failedValue, required this.max});

  @override
  final String failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListTooLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      _$ListTooLongCopyWithImpl<T, ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, int max) exceedingLength,
    required TResult Function(String failedValue) empty,
    required TResult Function(String failedValue) multiline,
    required TResult Function(String failedValue, int max) listTooLong,
    required TResult Function(String invalidValue) invalidEmail,
    required TResult Function(String invalidValue) shortPassword,
  }) {
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, int max)? exceedingLength,
    TResult Function(String failedValue)? empty,
    TResult Function(String failedValue)? multiline,
    TResult Function(String failedValue, int max)? listTooLong,
    TResult Function(String invalidValue)? invalidEmail,
    TResult Function(String invalidValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MultiLine<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  const factory ListTooLong({required String failedValue, required int max}) =
      _$ListTooLong<T>;

  String get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String invalidValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? invalidValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      invalidValue: invalidValue == freezed
          ? _value.invalidValue
          : invalidValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.invalidValue});

  @override
  final String invalidValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(invalidValue: $invalidValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, int max) exceedingLength,
    required TResult Function(String failedValue) empty,
    required TResult Function(String failedValue) multiline,
    required TResult Function(String failedValue, int max) listTooLong,
    required TResult Function(String invalidValue) invalidEmail,
    required TResult Function(String invalidValue) shortPassword,
  }) {
    return invalidEmail(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, int max)? exceedingLength,
    TResult Function(String failedValue)? empty,
    TResult Function(String failedValue)? multiline,
    TResult Function(String failedValue, int max)? listTooLong,
    TResult Function(String invalidValue)? invalidEmail,
    TResult Function(String invalidValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MultiLine<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required String invalidValue}) =
      _$InvalidEmail<T>;

  String get invalidValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({String invalidValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? invalidValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      invalidValue: invalidValue == freezed
          ? _value.invalidValue
          : invalidValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.invalidValue});

  @override
  final String invalidValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(invalidValue: $invalidValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, int max) exceedingLength,
    required TResult Function(String failedValue) empty,
    required TResult Function(String failedValue) multiline,
    required TResult Function(String failedValue, int max) listTooLong,
    required TResult Function(String invalidValue) invalidEmail,
    required TResult Function(String invalidValue) shortPassword,
  }) {
    return shortPassword(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, int max)? exceedingLength,
    TResult Function(String failedValue)? empty,
    TResult Function(String failedValue)? multiline,
    TResult Function(String failedValue, int max)? listTooLong,
    TResult Function(String invalidValue)? invalidEmail,
    TResult Function(String invalidValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MultiLine<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required String invalidValue}) =
      _$ShortPassword<T>;

  String get invalidValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
