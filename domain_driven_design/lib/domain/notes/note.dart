import 'package:dartz/dartz.dart';
import 'package:domain_driven_design/domain/core/failures.dart';
import 'package:domain_driven_design/domain/core/value_object.dart';
import 'package:domain_driven_design/domain/notes/todo_item.dart';
import 'package:domain_driven_design/domain/notes/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'note.freezed.dart';

@freezed
class Note with _$Note {
  const Note._();

  const factory Note({
    required UniqueId uniqueId,
    required NoteBody body,
    required NoteColor noteColor,
    required List3<TodoItem> todos,
  }) = _Note;

  /// Creates the ibitial state for a new note
  factory Note.empty() => Note(
        uniqueId: UniqueId(),
        body: NoteBody(''),
        noteColor: NoteColor(Colors.white),
        todos: List3(emptyList()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return body.failureOrUnit
        .andThen(todos.failureOrUnit)
        .andThen(
          /// here o => failureOption
          /// Here we only need the failures, So we have
          /// stated that if there are any errors found while filetring through the [TodoItem] Map
          /// then stop the chain of Enitity validation
          todos
              .getOrCrash()
              .map((todoItem) => todoItem.failureOption)
              .filter((o) => o.isSome())

              /// If any failures were present from the previous filter operation
              /// then the [Iterable of Failure]'s length must be atleast one
              /// So below we are saying to get the first failure, else return none() incase of not failure present
              /// [ONE-LINER]: If we can't get the 0th element, In such case its valid
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (f) => left(f)),
        )
        .fold((f) => some(f), (_) => none());
  }
}
