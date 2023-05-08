class Exercise {
  final String name;
  final List<SetInfo> sets;

  Exercise({required this.name, required this.sets});
}

class SetInfo {
  final int weight;
  final int reps;
  bool isChecked;
  bool isNegative;

  SetInfo({
    required this.weight,
    required this.reps,
    this.isChecked = false,
    this.isNegative = false,
  });
}
