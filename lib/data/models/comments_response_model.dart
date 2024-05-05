import 'package:dev_test_1/domain/comment.dart';

class CommentModel extends Comment {
  const CommentModel({
    required super.title,
    required super.description,
    required super.answers,
  });

  factory CommentModel.fromMap(Map entry) {
    final hasAnswers = entry['answers'] != null;
    final subComments = hasAnswers ? _getSubcomments(entry['answers']) : [];

    return CommentModel(
      title: entry['title'],
      description: entry['description'],
      answers: subComments as List<Comment>,
    );
  }

  Map<String, Object> toMap() {
    final answers = this
        .answers
        .map((e) => CommentModel(
              title: e.title,
              description: e.description,
              answers: e.answers,
            ).toMap())
        .toList();

    return {
      'title': title,
      'answers': answers,
      'description': description,
    };
  }

  static List<Comment> _getSubcomments(dynamic entries) {
    if (entries is! List<Map>) return <CommentModel>[];

    final decodedList = entries.map(
      (e) => CommentModel.fromMap(e),
    );
    return decodedList.toList();
  }
}
