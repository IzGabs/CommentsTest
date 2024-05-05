import 'package:dev_test_1/data/comments_repository_impl.dart';
import 'package:dev_test_1/domain/comment.dart';
import 'package:dev_test_1/domain/repositories/comment_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks.dart';
import 'datasource/comments_fixtures.dart';

void main() {
  final datasource = MockCommentsDataSource();

  late CommentsRepository repository;

  setUp(() {
    repository = CommentsRepositoryImpl(datasource);
  });

  test('should decode and responde a list of comments', () async {
    //Arrange
    when(() => datasource.getAll()).thenAnswer(
      (_) async => [
        levelOneCommentsFixture,
        levelOneEmptyAnswersExample,
      ],
    );

    //Act
    final commentsList = await repository.getAll();

    //Assert
    expect(commentsList, isA<List<Comment>>());
    expect(commentsList, isNotEmpty);
  });
}
