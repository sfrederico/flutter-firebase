class Reminder {
  final String id;
  String title;
  String description;
  bool isDone;

  Reminder(
    this.id, {
    required this.title,
    required this.description,
    this.isDone = false,
  });
}
