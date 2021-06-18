import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:domain_driven_design/domain/core/failures.dart';
import 'package:domain_driven_design/domain/core/value_object.dart';
import 'package:domain_driven_design/domain/core/value_transformers.dart';
import 'package:domain_driven_design/domain/core/value_validators.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

class NoteBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 1000;
  factory NoteBody(String input) {
    return NoteBody._(
      /// flatmap is used for chaining different functional statements
      /// In out case we are chaining various validations
      /// Beauty of flatmap is that if parent statement fails, then all the subsequent requests als fail
      /// In our case if [validateExceedingLength] fails then everything ahead of it will fail
      //! If Either is right() the flatmapping will continue, else it will suspend
      //! This phenomena is call RIGHT-BIASING
      validateExceedingLength(input, maxLength).flatMap(validateEmptyString),
    );
  }
  const NoteBody._(this.value);
}

class TodoName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 30;
  factory TodoName(String input) {
    return TodoName._(
      /// flatmap is used for chaining different functional statements
      /// In out case we are chaining various validations
      /// Beauty of flatmap is that if parent statement fails, then all the subsequent requests als fail
      /// In our case if [validateExceedingLength] fails then everything ahead of it will fail
      //! If Either is right() the flatmapping will continue, else it will suspend
      //! This phenomena is call RIGHT-BIASING
      validateExceedingLength(input, maxLength)
          .flatMap(validateEmptyString)
          .flatMap(validateMultiLineString),
    );
  }
  const TodoName._(this.value);
}

class NoteColor extends ValueObject<Color> {
  @override
  final Either<ValueFailure<Color>, Color> value;
  static const List<Color> predefinedColors = [
    /// Better wqould be to comment the Natural Language for colors in front of them
    /// It will make easier to change the colors
    Colors.white, // canvas
    Color.fromRGBO(245, 226, 174, 1),
    Color.fromRGBO(206, 232, 176, 1),
    Color.fromRGBO(185, 236, 237, 1),
    Color.fromRGBO(237, 190, 215, 1),
    Color.fromRGBO(192, 206, 237, 1),
    Color.fromRGBO(207, 190, 232, 1),
  ];
  factory NoteColor(Color input) {
    return NoteColor._(
      right(makeColorOpaque(input)),
    );
  }
  const NoteColor._(this.value);
}

class List3<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;
  static const maxLength = 30;
  factory List3(KtList<T> input) {
    return List3._(
      validateExceedingListLength(input, maxLength),
    );
  }
  const List3._(this.value);

  /// return the length of [List3] in use
  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  /// Checks wheater the currently being used [List3] is full or not
  /// and returns a [bool] as per that situation
  bool get isFull {
    return length == maxLength;
  }
}
