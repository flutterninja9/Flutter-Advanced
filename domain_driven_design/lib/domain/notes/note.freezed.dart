// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteTearOff {
  const _$NoteTearOff();

  _Note call(
      {required UniqueId uniqueId,
      required NoteBody body,
      required NoteColor noteColor,
      required List3<TodoItem> todos}) {
    return _Note(
      uniqueId: uniqueId,
      body: body,
      noteColor: noteColor,
      todos: todos,
    );
  }
}

/// @nodoc
const $Note = _$NoteTearOff();

/// @nodoc
mixin _$Note {
  UniqueId get uniqueId => throw _privateConstructorUsedError;
  NoteBody get body => throw _privateConstructorUsedError;
  NoteColor get noteColor => throw _privateConstructorUsedError;
  List3<TodoItem> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res>;
  $Res call(
      {UniqueId uniqueId,
      NoteBody body,
      NoteColor noteColor,
      List3<TodoItem> todos});
}

/// @nodoc
class _$NoteCopyWithImpl<$Res> implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  final Note _value;
  // ignore: unused_field
  final $Res Function(Note) _then;

  @override
  $Res call({
    Object? uniqueId = freezed,
    Object? body = freezed,
    Object? noteColor = freezed,
    Object? todos = freezed,
  }) {
    return _then(_value.copyWith(
      uniqueId: uniqueId == freezed
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as NoteBody,
      noteColor: noteColor == freezed
          ? _value.noteColor
          : noteColor // ignore: cast_nullable_to_non_nullable
              as NoteColor,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List3<TodoItem>,
    ));
  }
}

/// @nodoc
abstract class _$NoteCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$NoteCopyWith(_Note value, $Res Function(_Note) then) =
      __$NoteCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId uniqueId,
      NoteBody body,
      NoteColor noteColor,
      List3<TodoItem> todos});
}

/// @nodoc
class __$NoteCopyWithImpl<$Res> extends _$NoteCopyWithImpl<$Res>
    implements _$NoteCopyWith<$Res> {
  __$NoteCopyWithImpl(_Note _value, $Res Function(_Note) _then)
      : super(_value, (v) => _then(v as _Note));

  @override
  _Note get _value => super._value as _Note;

  @override
  $Res call({
    Object? uniqueId = freezed,
    Object? body = freezed,
    Object? noteColor = freezed,
    Object? todos = freezed,
  }) {
    return _then(_Note(
      uniqueId: uniqueId == freezed
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as NoteBody,
      noteColor: noteColor == freezed
          ? _value.noteColor
          : noteColor // ignore: cast_nullable_to_non_nullable
              as NoteColor,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List3<TodoItem>,
    ));
  }
}

/// @nodoc

class _$_Note extends _Note {
  const _$_Note(
      {required this.uniqueId,
      required this.body,
      required this.noteColor,
      required this.todos})
      : super._();

  @override
  final UniqueId uniqueId;
  @override
  final NoteBody body;
  @override
  final NoteColor noteColor;
  @override
  final List3<TodoItem> todos;

  @override
  String toString() {
    return 'Note(uniqueId: $uniqueId, body: $body, noteColor: $noteColor, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Note &&
            (identical(other.uniqueId, uniqueId) ||
                const DeepCollectionEquality()
                    .equals(other.uniqueId, uniqueId)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.noteColor, noteColor) ||
                const DeepCollectionEquality()
                    .equals(other.noteColor, noteColor)) &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uniqueId) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(noteColor) ^
      const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  _$NoteCopyWith<_Note> get copyWith =>
      __$NoteCopyWithImpl<_Note>(this, _$identity);
}

abstract class _Note extends Note {
  const factory _Note(
      {required UniqueId uniqueId,
      required NoteBody body,
      required NoteColor noteColor,
      required List3<TodoItem> todos}) = _$_Note;
  const _Note._() : super._();

  @override
  UniqueId get uniqueId => throw _privateConstructorUsedError;
  @override
  NoteBody get body => throw _privateConstructorUsedError;
  @override
  NoteColor get noteColor => throw _privateConstructorUsedError;
  @override
  List3<TodoItem> get todos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoteCopyWith<_Note> get copyWith => throw _privateConstructorUsedError;
}
