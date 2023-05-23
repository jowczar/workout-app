part of 'challenges_main_screen_bloc.dart';

@immutable
abstract class ChallengesMainScreenState {}

class ChallengesMainScreenInitial extends ChallengesMainScreenState {}

class LoadingState extends ChallengesMainScreenState {}

class LoadedState extends ChallengesMainScreenState {
  final List<Challenge> data;

  LoadedState(this.data);
}

class ErrorState extends ChallengesMainScreenState {
  final String message;

  ErrorState({
    required this.message,
  });
}