import 'package:dev_test_1/domain/comment.dart';
import 'package:dev_test_1/presentation/comment_page_controller.dart';
import 'package:dev_test_1/presentation/pages/comment_page.dart';
import 'package:flutter/material.dart';

class CommentTile extends StatelessWidget {
  final Comment topic;
  final CommentPageController controller;

  const CommentTile({
    super.key,
    required this.topic,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) => controller.removeFromBreadCrub(topic),
      child: ListTile(
        title: Text(topic.title),
        subtitle: Text(topic.description),
        onTap: () {
          controller.addBreadCrub(topic);
          final page = CommentPage(section: topic, controller: controller);
          final pageRoute = MaterialPageRoute(builder: (context) => page);
          Navigator.of(context).push(pageRoute);
        },
      ),
    );
  }
}
