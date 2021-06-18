import 'package:dartz/dartz.dart';
import 'package:domain_driven_design/domain/core/failures.dart';
import 'package:domain_driven_design/domain/core/value_object.dart';
import 'package:domain_driven_design/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo_item.freezed.dart';

@freezed
class TodoItem with _$TodoItem {
  const TodoItem._();

  const factory TodoItem({
    required UniqueId uniqueId,
    required TodoName todoName,
    required bool done,
  }) = _TodoItem;

  Option<ValueFailure<dynamic>> get failureOption {
    return todoName.value.fold(
      (f) => some(f),
      (_) => none(),
    );
  }
}
