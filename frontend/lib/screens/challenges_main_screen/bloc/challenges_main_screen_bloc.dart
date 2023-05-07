import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'challenges_main_screen_event.dart';
part 'challenges_main_screen_state.dart';

class ChallengesMainScreenBloc extends Bloc<ChallengesMainScreenEvent, ChallengesMainScreenState> {
  ChallengesMainScreenBloc() : super(ChallengesMainScreenInitial()) {
    on<ChallengesMainScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
