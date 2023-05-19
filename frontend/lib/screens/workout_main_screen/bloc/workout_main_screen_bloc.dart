import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'workout_main_screen_event.dart';
part 'workout_main_screen_state.dart';

class WorkoutMainScreenBloc extends Bloc<WorkoutMainScreenEvent, WorkoutMainScreenState> {
  // StreamController<List<Map<String, dynamic>>> exercises = [];
  var exercises = List<Map<String, dynamic>>;

  WorkoutMainScreenBloc() : super(WorkoutMainScreenInitial()) {
    on<WorkoutMainScreenEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<WorkoutMainInitEvent>(_fetchData);
  }

  Future<void> _fetchData(
    WorkoutMainInitEvent event,
    Emitter<WorkoutMainScreenState> emit
  ) async {
    print('Workout main screen fetchData');

    emit(LoadingState());

    await Future.delayed(const Duration(seconds: 5));

    List<Map<String, dynamic>> newList = [];
    for(var i = 0; i <= Random().nextInt(3) + 2; i++){
      newList.add({
        'id': i + 1,
        'name': 'Plan treningowy ${i + 1}'
      });
    }

    emit(LoadedState(newList));
  }
}
