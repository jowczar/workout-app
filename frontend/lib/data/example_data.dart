class ExampleData {
  final String title;
  final int minutes;
  final double progress;
  final String video;
  final String description;
  final List<String> steps;

  ExampleData({
    required this.title,
    required this.minutes,
    required this.progress,
    required this.video,
    required this.description,
    required this.steps,
  });

  @override
  String toString() {
    return 'ExampleData(title: $title, minutes: $minutes, progress: $progress, video: $video)';
  }
}
