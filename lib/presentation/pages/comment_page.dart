import 'package:dev_test_1/domain/comment.dart';
import 'package:dev_test_1/presentation/comment_page_controller.dart';
import 'package:flutter/material.dart';

import '../components/comment_tile.dart';

class CommentPage extends StatelessWidget {
  final Comment section;
  final CommentPageController controller;

  const CommentPage({
    super.key,
    required this.section,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final comments = section.answers
        .map((e) => CommentTile(topic: e, controller: controller))
        .toList();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(section.title),
            pinned: true,
            floating: true,
          ),
          if (controller.breadcrubs.isNotEmpty) _buildBreadcrubs(),
          SliverList.list(
            children: [
              ...comments,
              ...comments,
              ...comments,
            ],
          ),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildBreadcrubs() {
    final children = controller.breadcrubs.map((e) {
      return ExpansionTile(
        title: Text(e.title),
        children: [Text(e.description)],
      );
    });

    return SliverToBoxAdapter(
      child: ExpansionTile(
        title: const Text('BreadCrub'),
        children: children.toList(),
      ),
    );
  }
}
