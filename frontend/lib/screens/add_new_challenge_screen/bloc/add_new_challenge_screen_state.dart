part of 'add_new_challenge_screen_bloc.dart';

@immutable
class AddNewChallengeScreenState {}

class AddNewChallengeScreenInitial extends AddNewChallengeScreenState {}

class ShowErrorState extends AddNewChallengeScreenState {}

class NextTabBarPageState extends AddNewChallengeScreenState {}

class ErrorState extends AddNewChallengeScreenState {
  final String message;

  ErrorState({
    required this.message,
  });
}

class LoadingState extends AddNewChallengeScreenState {}
