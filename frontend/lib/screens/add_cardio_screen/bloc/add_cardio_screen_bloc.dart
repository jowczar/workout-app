import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_cardio_screen_event.dart';
part 'add_cardio_screen_state.dart';

class AddCardioScreenBloc
    extends Bloc<AddCardioScreenEvent, AddCardioScreenState> {
  AddCardioScreenBloc() : super(AddCardioScreenState());

  @override
  Stream<AddCardioScreenState> mapEventToState(
    AddCardioScreenEvent event,
  ) async* {
    if (event is CancelButtonTappedEvent) {
      // Handle cancel button logic here
    } else if (event is SaveButtonTappedEvent) {
      // Handle save button logic here
    }
  }
}
