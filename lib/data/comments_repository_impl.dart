import 'package:dev_test_1/data/models/comments_response_model.dart';
import 'package:dev_test_1/domain/comment.dart';

import '../domain/repositories/comment_repository.dart';

final class CommentsRepositoryImpl implements CommentsRepository {
  final CommentsDataSource dataSource;

  CommentsRepositoryImpl(this.dataSource);

  @override
  Future<void> add(entry) async {
    final transformModel = CommentModel(
      title: entry.title,
      description: entry.description,
      answers: entry.answers,
    );

    dataSource.add(transformModel.toMap());
  }

  @override
  Future<List<Comment>> getAll() async {
    final requestList = await dataSource.getAll();
    if (requestList.isEmpty) return [];

    final comments = requestList.map((e) => CommentModel.fromMap(e));
    return comments.toList();
  }
}
