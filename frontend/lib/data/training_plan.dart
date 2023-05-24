import '../screens/common_widgets/exercise.dart';

class TrainingPlan {
  late String name;
  late List<Exercise> exercise;

  TrainingPlan({this.name = "", this.exercise = const []});
}
