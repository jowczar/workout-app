import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calendar_event.dart';
part 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final passwordController =  DateTime.now();

  CalendarBloc() : super(CalendarInitial()) {
    on<DayTappedEvent>((event, emit) async {
      emit(OpenDayState(event.day));
    });
  }
}


