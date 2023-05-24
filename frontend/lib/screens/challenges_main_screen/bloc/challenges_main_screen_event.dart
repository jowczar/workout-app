part of 'challenges_main_screen_bloc.dart';

@immutable
abstract class ChallengesMainScreenEvent {}

class ChallengesMainInitEvent extends ChallengesMainScreenEvent {}

class DeleteChallengeEvent extends ChallengesMainScreenEvent{
  final String id;

  DeleteChallengeEvent(this.id);
}
