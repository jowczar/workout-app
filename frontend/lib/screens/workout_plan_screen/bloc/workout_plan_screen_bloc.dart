import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'workout_plan_screen_event.dart';
part 'workout_plan_screen_state.dart';

class WorkoutPlanScreenBloc extends Bloc<WorkoutPlanScreenEvent, WorkoutPlanScreenState> {
  WorkoutPlanScreenBloc() : super(WorkoutPlanScreenInitial()) {
    on<WorkoutPlanScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
