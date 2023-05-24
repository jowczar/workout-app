import 'dart:convert';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workout_app/data/challenge.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
part 'challenges_main_screen_event.dart';
part 'challenges_main_screen_state.dart';

class ChallengesMainScreenBloc
    extends Bloc<ChallengesMainScreenEvent, ChallengesMainScreenState> {
  ChallengesMainScreenBloc() : super(ChallengesMainScreenInitial()) {
    on<ChallengesMainScreenEvent>((event, emit) {});
    on<ChallengesMainInitEvent>(_fetchData);
  }

  Future<void> _fetchData(
    ChallengesMainInitEvent event,
    Emitter<ChallengesMainScreenState> emit) 
  async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    emit(LoadingState());

    var url = Uri.parse('${dotenv.env['API_ROOT']}/challenge');

    var response = await http.get(url, headers: {'UserUID': '${prefs.getString('user_id')}'});
    List<Challenge> challenges = List<Challenge>.from(json.decode(response.body).map((x) => Challenge.fromJson(x)));

    emit(LoadedState(challenges));
  }
}
