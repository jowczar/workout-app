part of 'workout_plan_screen_bloc.dart';

@immutable
abstract class WorkoutPlanScreenEvent {}

class WorkoutPlanInitEvent extends WorkoutPlanScreenEvent {
  final String id;

  WorkoutPlanInitEvent(
    this.id
  );
}

class WorkoutPlanDeleteExerciseEvent extends WorkoutPlanScreenEvent {
  final String id;
  final String planID;
  WorkoutPlanDeleteExerciseEvent(this.id, this.planID);
}