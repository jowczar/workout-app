import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'workout_main_screen_event.dart';
part 'workout_main_screen_state.dart';

class WorkoutMainScreenBloc extends Bloc<WorkoutMainScreenEvent, WorkoutMainScreenState> {
  WorkoutMainScreenBloc() : super(WorkoutMainScreenInitial()) {
    on<WorkoutMainScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
