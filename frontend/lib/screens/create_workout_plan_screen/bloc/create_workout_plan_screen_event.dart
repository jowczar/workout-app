part of 'create_workout_plan_screen_bloc.dart';

@immutable
abstract class CreateWorkoutPlanScreenEvent {}

class SaveTrainingPlanEvent extends CreateWorkoutPlanScreenEvent {}

class NewTrainingPlanEvent extends CreateWorkoutPlanScreenEvent{}

class ChangeNameTrainingPlan extends CreateWorkoutPlanScreenEvent {}
