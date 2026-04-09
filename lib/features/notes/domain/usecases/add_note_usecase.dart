class AddNoteUseCase {
  final NotesRepository repository;

  AddNoteUseCase(this.repository);

  Future<void> call(Note note) {
    if (note.title.isEmpty) {
      throw Exception('Title cannot be empty');
    }

    return repository.addNote(note);
  }
}
