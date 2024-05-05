import '../../domain/repositories/comment_repository.dart';

final _inMemoryDatabase = <Map>[];

class CommentsLocalDataSource implements CommentsDataSource {
  @override
  Future<void> add(entry) async => _inMemoryDatabase.add(entry);

  @override
  Future<List<Map>> getAll() async => _inMemoryDatabase;
}

const _nestedComment = {
  'title': 'Nested',
  'description': ' I have a item2 and 3 comments',
  'answers': [
    _exampleComment1,
    _exampleComment2,
    _exampleComment3,
    _exampleComment1,
    _exampleComment2,
    _exampleComment3,
    _exampleComment1,
    _exampleComment2,
    _exampleComment3,
    _exampleComment1,
    _exampleComment2,
    _exampleComment3,
    _exampleComment1,
    _exampleComment2,
    _exampleComment3,
  ],
};

const _exampleComment1 = {
  'title': 'My Comment!',
  'description': 'I do as i like!',
  'answers': [
    _exampleComment2,
  ],
};

const _exampleComment2 = {
  'title': 'My Commet is more important',
  'description': ' No you dont',
  'answers': [_exampleComment3]
};

const _exampleComment3 = {
  'title': 'My Comment!',
  'description': 'I do as i like either!',
  'answers': [],
};

const levelOneCommentsFixture = {
  'title': 'Nested and fun',
  'description': 'Just try me!',
  'answers': [
    _nestedComment,
    _exampleComment1,
  ],
};
