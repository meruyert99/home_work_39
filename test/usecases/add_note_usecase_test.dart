void main() {
  late MockNotesRepository mockRepo;
  late AddNoteUseCase useCase;

  setUp(() {
    mockRepo = MockNotesRepository();
    useCase = AddNoteUseCase(mockRepo);
  });

  test('should call repository when valid note', () async {
    final note = Note(id: 1, title: 'Title', content: 'Text');

    when(() => mockRepo.addNote(note))
        .thenAnswer((_) async {});

    await useCase(note);

    verify(() => mockRepo.addNote(note)).called(1);
  });
}
