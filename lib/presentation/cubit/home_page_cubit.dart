import 'package:dev_test_1/data/comments_repository_impl.dart';
import 'package:dev_test_1/data/datasource/comments_local_datasource.dart';
import 'package:dev_test_1/domain/comment.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());
  final _repository = CommentsRepositoryImpl(CommentsLocalDataSource());

  final List<Comment> comments = [];

  void loadHomePageItens() async {
    try {
      emit(HomePageLoading());
      final response = await _repository.getAll();
      comments.addAll(response);
      emit(HomePageListUpdated());
    } catch (e) {
      emit(HomePageError());
    }
  }

  void add(Comment comment) async {
    try {
      emit(HomePageLoading());
      await _repository.add(comment);
      comments.add(comment);
      emit(HomePageListUpdated());
    } catch (e) {
      emit(HomePageError());
    }
  }
}
