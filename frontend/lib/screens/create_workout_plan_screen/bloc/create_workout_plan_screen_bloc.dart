import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'create_workout_plan_screen_event.dart';
part 'create_workout_plan_screen_state.dart';

class CreateWorkoutPlanScreenBloc extends Bloc<CreateWorkoutPlanScreenEvent, CreateWorkoutPlanScreenState> {
  CreateWorkoutPlanScreenBloc() : super(CreateWorkoutPlanScreenInitial()) {
    on<CreateWorkoutPlanScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
