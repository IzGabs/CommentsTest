import '../domain/comment.dart';

class CommentPageController {
  final Set<Comment> _breadcrubs = {};
  Set<Comment> get breadcrubs => _breadcrubs;

  void addBreadCrub(Comment comment) {
    _breadcrubs.add(comment);
  }

  void removeFromBreadCrub(Comment comment) {
    _breadcrubs.remove(comment);
  }
}
