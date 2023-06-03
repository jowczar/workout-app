class Exercise {
  final String name;
  final String id;
  final List<SetInfo> sets;

  Exercise({ required this.id, required this.name, required this.sets});
}

class SetInfo {
  final String weight;
  final String reps;
  bool isChecked;
  bool isNegative;

  SetInfo({
    required this.weight,
    required this.reps,
    this.isChecked = false,
    this.isNegative = false,
  });
}
