import 'package:dev_test_1/domain/comment.dart';
import 'package:dev_test_1/presentation/components/comment_tile.dart';
import 'package:dev_test_1/presentation/components/widgets/add_comment_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../comment_page_controller.dart';
import '../cubit/home_page_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit()..loadHomePageItens(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Comments Home page')),
        floatingActionButton: const AddCommentFloatingButton(),
        body: BlocBuilder<HomePageCubit, HomePageState>(
          builder: (context, state) => handleBuildStates(state, context),
        ),
      ),
    );
  }

  Widget handleBuildStates(HomePageState state, BuildContext context) {
    if (state is HomePageError) return const Center(child: Text('Error'));
    if (state is HomePageListUpdated) {
      final cubit = context.read<HomePageCubit>();
      return _onConnectionLoaded(cubit.comments);
    }

    return const Center(child: CircularProgressIndicator());
  }

  Widget _onConnectionLoaded(List<Comment> snapshot) {
    final listTiles = snapshot
        .map((e) => CommentTile(topic: e, controller: CommentPageController()))
        .toList();

    return ListView(children: listTiles);
  }
}
