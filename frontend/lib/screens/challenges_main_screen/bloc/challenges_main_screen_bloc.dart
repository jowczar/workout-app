import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:workout_app/data/challenge.dart';

part 'challenges_main_screen_event.dart';
part 'challenges_main_screen_state.dart';

class ChallengesMainScreenBloc extends Bloc<ChallengesMainScreenEvent, ChallengesMainScreenState> {
  ChallengesMainScreenBloc() : super(ChallengesMainScreenInitial()) {
    on<ChallengesMainScreenEvent>((event, emit) {});
    on<ChallengesMainInitEvent>(_fetchData);
  }

  Future<void> _fetchData(
    ChallengesMainInitEvent event,
    Emitter<ChallengesMainScreenState> emit
  ) async {
    emit(LoadingState());
    await Future.delayed(const Duration(seconds: 2));

    List<Challenge> challenges = [];

    for(var i = 0; i <= Random().nextInt(3) + 2; i++){
      challenges.add(
        Challenge(
          id: i,
          name: 'Deadlift: ${(Random().nextInt(5) + 10) * 10}kg',
          points: (Random().nextInt(5) + 10) * 10
        )
      );
    }

    emit(LoadedState(challenges));
  }
}
