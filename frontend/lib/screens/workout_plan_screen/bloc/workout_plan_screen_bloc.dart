import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../common_widgets/exercise.dart';

part 'workout_plan_screen_event.dart';
part 'workout_plan_screen_state.dart';

class WorkoutPlanScreenBloc
    extends Bloc<WorkoutPlanScreenEvent, WorkoutPlanScreenState> {
  WorkoutPlanScreenBloc() : super(WorkoutPlanScreenInitial()) {
    on<WorkoutPlanScreenEvent>((event, emit) {});
    on<WorkoutPlanInitEvent>(_fetchData);
  }

  Future<void> _fetchData(
      WorkoutPlanInitEvent event, Emitter<WorkoutPlanScreenState> emit) async {
    print('Workout plan screen fetchData');

    emit(LoadingState());
    await Future.delayed(const Duration(seconds: 2));
    List<Exercise> exercises = [];

    for (var i = 0; i <= Random().nextInt(3) + 2; i++) {
      exercises.add(Exercise(name: 'Ćwiczonko ${i}', sets: [
        SetInfo(
            weight: (Random().nextInt(5) + 10) * 10,
            reps: Random().nextInt(3) + 2),
        SetInfo(
            weight: (Random().nextInt(5) + 10) * 10,
            reps: Random().nextInt(3) + 2),
        SetInfo(
            weight: (Random().nextInt(5) + 10) * 10,
            reps: Random().nextInt(3) + 2),
      ]));
    }

    emit(LoadedState(exercises));
  }
}
