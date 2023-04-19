import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_cardio_screen_event.dart';
part 'add_cardio_screen_state.dart';

class AddCardioScreenBloc
    extends Bloc<AddCardioScreenEvent, AddCardioScreenState> {
  AddCardioScreenBloc() : super(AddCardioScreenInitial()) {
    on<AddCardioScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
