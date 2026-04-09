class NoteFixtures {
  static Map<String, dynamic> validJson = {
    "id": 1,
    "title": "Test",
    "content": "Content"
  };

  static Map<String, dynamic> emptyJson = {};

  static Map<String, dynamic> nullJson = {
    "id": null,
    "title": null,
    "content": null
  };

  static Map<String, dynamic> partialJson = {
    "id": 2,
    "title": "Partial"
  };

  static Map<String, dynamic> invalidJson = {
    "id": "wrong", // ❗ некорректный тип
    "title": 123,
    "content": true
  };
}
