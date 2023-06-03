part of 'workout_main_screen_bloc.dart';

@immutable
abstract class WorkoutMainScreenEvent {}

class WorkoutMainInitEvent extends WorkoutMainScreenEvent {}

class WorkoutMainDeletePlanEvent extends WorkoutMainInitEvent {
  final String planID;

  WorkoutMainDeletePlanEvent(this.planID);
}