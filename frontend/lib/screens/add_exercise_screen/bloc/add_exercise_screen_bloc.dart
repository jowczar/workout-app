import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_exercise_screen_event.dart';
part 'add_exercise_screen_state.dart';

class AddExerciseScreenBloc extends Bloc<AddExerciseScreenEvent, AddExerciseScreenState> {
  AddExerciseScreenBloc() : super(AddExerciseScreenInitial()) {
    on<AddExerciseScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
