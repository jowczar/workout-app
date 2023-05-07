part of 'add_exercise_screen_bloc.dart';

@immutable
abstract class AddExerciseScreenEvent {}

class OnTextChangeEvent extends AddExerciseScreenEvent {}

class AddNewSetEvent extends AddExerciseScreenEvent {}

class CancelButtonTappedEvent extends AddExerciseScreenEvent {}

class SaveButtonTappedEvent extends AddExerciseScreenEvent {}

class CopyLastSetTappedEvent extends AddExerciseScreenEvent {}
