void main() {
  group('NoteAdapter tests', () {

    test('1. valid data', () {
      final model = NoteModel.fromJson(NoteFixtures.validJson);
      final note = NoteAdapter.fromModel(model);

      expect(note.id, 1);
      expect(note.title, 'Test');
    });

    test('2. empty data', () {
      final model = NoteModel.fromJson(NoteFixtures.emptyJson);
      final note = NoteAdapter.fromModel(model);

      expect(note.id, -1);
      expect(note.title, 'No title');
    });

    test('3. null fields', () {
      final model = NoteModel.fromJson(NoteFixtures.nullJson);
      final note = NoteAdapter.fromModel(model);

      expect(note.content, '');
    });

    test('4. partial data', () {
      final model = NoteModel.fromJson(NoteFixtures.partialJson);
      final note = NoteAdapter.fromModel(model);

      expect(note.title, 'Partial');
      expect(note.content, '');
    });

    test('5. invalid types', () {
      final model = NoteModel.fromJson(NoteFixtures.invalidJson);

      final note = NoteAdapter.fromModel(model);

      // fallback логика
      expect(note.id, -1);
      expect(note.title, 'No title');
    });
  });
}
