const _nestedComment = {
  'title': 'Example title 2',
  'description': 'Example Description 2',
  'answers': [
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
  'title': 'Example title',
  'description': 'Example Description',
  'answers': [
    _nestedComment,
    _exampleComment1,
    _exampleComment2,
    _exampleComment3,
  ],
};

const levelOneEmptyAnswersExample = {
  'title': 'Example title',
  'description': 'Example Description',
  'answers': [],
};
