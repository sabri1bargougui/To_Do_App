class Task {
  String title;
  String description;
  bool completed;

  Task({this.title, this.description, this.completed = false});
  void toggleCompleted() {
    completed = !completed;
  }
}
