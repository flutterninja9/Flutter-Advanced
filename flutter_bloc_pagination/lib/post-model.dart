import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class PostModel extends Equatable {
  final int id;
  final String title;
  final String body;

  const PostModel({
    @required this.id,
    @required this.title,
    @required this.body,
  });

  @override
  List<Object> get props => [id, title, body];

  @override
  bool get stringify => true;

  PostModel copyWith({
    int id,
    String title,
    String body,
  }) {
    return PostModel(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'body': body,
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'],
      title: map['title'],
      body: map['body'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PostModel.fromJson(String source) =>
      PostModel.fromMap(json.decode(source));
}
