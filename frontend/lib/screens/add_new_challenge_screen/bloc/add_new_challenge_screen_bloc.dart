import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_new_challenge_screen_event.dart';
part 'add_new_challenge_screen_state.dart';

class AddNewChallengeScreenBloc
    extends Bloc<AddNewChallengeScreenEvent, AddNewChallengeScreenState> {
  AddNewChallengeScreenBloc() : super(AddNewChallengeScreenState());

  @override
  Stream<AddNewChallengeScreenState> mapEventToState(
    AddNewChallengeScreenEvent event,
  ) async* {
    if (event is CancelButtonTappedEvent) {
      // Handle cancel button logic here
    } else if (event is SaveButtonTappedEvent) {
      // Handle save button logic here
    }
  }
}
