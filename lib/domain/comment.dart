import 'package:flutter/material.dart';

@immutable
class Comment {
  final String title;
  final String description;
  final List<Comment> answers;

  const Comment({
    required this.title,
    required this.description,
    this.answers = const [],
  });
}
