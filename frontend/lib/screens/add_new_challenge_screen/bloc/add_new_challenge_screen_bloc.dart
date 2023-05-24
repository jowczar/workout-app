import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

part 'add_new_challenge_screen_event.dart';
part 'add_new_challenge_screen_state.dart';

class AddNewChallengeScreenBloc extends Bloc<AddNewChallengeScreenEvent, AddNewChallengeScreenState> {

  final nameController = TextEditingController();
  final pointsController = TextEditingController();

  AddNewChallengeScreenBloc() : super(AddNewChallengeScreenInitial()) {
    on<AddNewChallengeScreenEvent>((event, emit) {});
    on<SaveButtonTappedEvent>(_saveChallenges);
  }

  Future<void> _saveChallenges(
    AddNewChallengeScreenEvent event,
    Emitter<AddNewChallengeScreenState> emit) 
  async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    emit(LoadingState());

    var url = Uri.parse('${dotenv.env['API_ROOT']}/challenge');
    await http.post(url, 
      headers: {'UserUID': '${prefs.getString('user_id')}', 'X-CSRFToken': '34inrzBarciU428wJ7FjqhfKc0g0yTTt'},
      body: {'name': nameController.text, 'points': pointsController.text});
    // var response = await http.get(url, headers: {'UserUID': '${prefs.getString('user_id')}'});
    // List<Challenge> challenges = List<Challenge>.from(json.decode(response.body).map((x) => Challenge.fromJson(x)));

    emit(NextTabBarPageState());
  }
}
