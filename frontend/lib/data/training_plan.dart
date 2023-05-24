import '../screens/common_widgets/exercise.dart';

class TrainingPlan {
  late String name;
  late String id;

  TrainingPlan({this.name = "", this.id = ''});

  factory TrainingPlan.fromJson(Map<String, dynamic> json) {
    return TrainingPlan(
      id: json['id'],
      name: json['name'],
    );
  }
  
}
