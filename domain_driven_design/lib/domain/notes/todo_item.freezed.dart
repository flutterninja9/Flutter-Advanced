// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'todo_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoItemTearOff {
  const _$TodoItemTearOff();

  _TodoItem call(
      {required UniqueId uniqueId,
      required TodoName todoName,
      required bool done}) {
    return _TodoItem(
      uniqueId: uniqueId,
      todoName: todoName,
      done: done,
    );
  }
}

/// @nodoc
const $TodoItem = _$TodoItemTearOff();

/// @nodoc
mixin _$TodoItem {
  UniqueId get uniqueId => throw _privateConstructorUsedError;
  TodoName get todoName => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoItemCopyWith<TodoItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoItemCopyWith<$Res> {
  factory $TodoItemCopyWith(TodoItem value, $Res Function(TodoItem) then) =
      _$TodoItemCopyWithImpl<$Res>;
  $Res call({UniqueId uniqueId, TodoName todoName, bool done});
}

/// @nodoc
class _$TodoItemCopyWithImpl<$Res> implements $TodoItemCopyWith<$Res> {
  _$TodoItemCopyWithImpl(this._value, this._then);

  final TodoItem _value;
  // ignore: unused_field
  final $Res Function(TodoItem) _then;

  @override
  $Res call({
    Object? uniqueId = freezed,
    Object? todoName = freezed,
    Object? done = freezed,
  }) {
    return _then(_value.copyWith(
      uniqueId: uniqueId == freezed
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      todoName: todoName == freezed
          ? _value.todoName
          : todoName // ignore: cast_nullable_to_non_nullable
              as TodoName,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TodoItemCopyWith<$Res> implements $TodoItemCopyWith<$Res> {
  factory _$TodoItemCopyWith(_TodoItem value, $Res Function(_TodoItem) then) =
      __$TodoItemCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId uniqueId, TodoName todoName, bool done});
}

/// @nodoc
class __$TodoItemCopyWithImpl<$Res> extends _$TodoItemCopyWithImpl<$Res>
    implements _$TodoItemCopyWith<$Res> {
  __$TodoItemCopyWithImpl(_TodoItem _value, $Res Function(_TodoItem) _then)
      : super(_value, (v) => _then(v as _TodoItem));

  @override
  _TodoItem get _value => super._value as _TodoItem;

  @override
  $Res call({
    Object? uniqueId = freezed,
    Object? todoName = freezed,
    Object? done = freezed,
  }) {
    return _then(_TodoItem(
      uniqueId: uniqueId == freezed
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      todoName: todoName == freezed
          ? _value.todoName
          : todoName // ignore: cast_nullable_to_non_nullable
              as TodoName,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TodoItem extends _TodoItem {
  const _$_TodoItem(
      {required this.uniqueId, required this.todoName, required this.done})
      : super._();

  @override
  final UniqueId uniqueId;
  @override
  final TodoName todoName;
  @override
  final bool done;

  @override
  String toString() {
    return 'TodoItem(uniqueId: $uniqueId, todoName: $todoName, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoItem &&
            (identical(other.uniqueId, uniqueId) ||
                const DeepCollectionEquality()
                    .equals(other.uniqueId, uniqueId)) &&
            (identical(other.todoName, todoName) ||
                const DeepCollectionEquality()
                    .equals(other.todoName, todoName)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uniqueId) ^
      const DeepCollectionEquality().hash(todoName) ^
      const DeepCollectionEquality().hash(done);

  @JsonKey(ignore: true)
  @override
  _$TodoItemCopyWith<_TodoItem> get copyWith =>
      __$TodoItemCopyWithImpl<_TodoItem>(this, _$identity);
}

abstract class _TodoItem extends TodoItem {
  const factory _TodoItem(
      {required UniqueId uniqueId,
      required TodoName todoName,
      required bool done}) = _$_TodoItem;
  const _TodoItem._() : super._();

  @override
  UniqueId get uniqueId => throw _privateConstructorUsedError;
  @override
  TodoName get todoName => throw _privateConstructorUsedError;
  @override
  bool get done => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TodoItemCopyWith<_TodoItem> get copyWith =>
      throw _privateConstructorUsedError;
}
