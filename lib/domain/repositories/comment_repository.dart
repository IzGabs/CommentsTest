import 'package:dev_test_1/domain/comment.dart';

abstract class CommentsRepository {
  Future<List<Comment>> getAll();
  Future<void> add(Comment entry);
}

abstract class CommentsDataSource {
  Future<List<Map>> getAll();
  Future<void> add(Map<String, Object> entry);
}
