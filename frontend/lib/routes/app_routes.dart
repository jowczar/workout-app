import 'package:flutter/widgets.dart';
import 'package:workout_app/screens/forgot_password/page/forgot_password_page.dart';
import 'package:workout_app/screens/lp_unauthorized_screen/lp_unauthorized_screen.dart';
import 'package:workout_app/screens/sign_in/page/sign_in_page.dart';
import 'package:workout_app/screens/change_password/page/change_password_page.dart';

import 'package:workout_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:workout_app/presentation/lp_authorized_calendar_screen/lp_authorized_calendar_screen.dart';
import 'package:workout_app/presentation/menu_screen/menu_screen.dart';
import 'package:workout_app/presentation/calendar_screen/calendar_screen.dart';
import 'package:workout_app/presentation/calendar_another_month_screen/calendar_another_month_screen.dart';
import 'package:workout_app/presentation/calendar_with_activity_screen/calendar_with_activity_screen.dart';
import 'package:workout_app/presentation/calendar_with_done_activity_screen/calendar_with_done_activity_screen.dart';
import 'package:workout_app/presentation/progress_screen/progress_screen.dart';
import 'package:workout_app/presentation/progress_empty_state_screen/progress_empty_state_screen.dart';
import 'package:workout_app/presentation/challenges_screen/challenges_screen.dart';
import 'package:workout_app/presentation/challenges_add_new_challenge_screen/challenges_add_new_challenge_screen.dart';
import 'package:workout_app/presentation/workout_screen/workout_screen.dart';
import 'package:workout_app/presentation/workout1_screen/workout1_screen.dart';
import 'package:workout_app/presentation/workout_workout_plan_screen/workout_workout_plan_screen.dart';
import 'package:workout_app/presentation/workout_workout_plan_executing_plan_screen/workout_workout_plan_executing_plan_screen.dart';
import 'package:workout_app/presentation/create_workout_plan_screen/create_workout_plan_screen.dart';
import 'package:workout_app/presentation/workout_plan_add_cardio_screen/workout_plan_add_cardio_screen.dart';
import 'package:workout_app/presentation/workout_plan_add_exercise_one_screen/workout_plan_add_exercise_one_screen.dart';
import 'package:workout_app/presentation/workout_plan_add_exercise_screen/workout_plan_add_exercise_screen.dart';
import 'package:workout_app/presentation/workout_plan_with_added_exercise_screen/workout_plan_with_added_exercise_screen.dart';
import 'package:workout_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String lpUnauthorizedScreen = '/lp_unauthorized_screen';
  static const String signInScreen = '/sign_in';
  static const String signUpScreen = '/sign_up';
  static const String homeScreen = '/home';
  static const String forgotPasswordScreen = '/forgot_password';
  static const String changePasswordScreen = '/change_password';


  static const String lpAuthorizedCalendarScreen =
      '/lp_authorized_calendar_screen';

  static const String menuScreen = '/menu_screen';

  static const String calendarScreen = '/calendar_screen';

  static const String calendarAnotherMonthScreen =
      '/calendar_another_month_screen';

  static const String calendarWithActivityScreen =
      '/calendar_with_activity_screen';

  static const String calendarWithDoneActivityScreen =
      '/calendar_with_done_activity_screen';

  static const String progressScreen = '/progress_screen';

  static const String progressEmptyStateScreen = '/progress_empty_state_screen';

  static const String challengesScreen = '/challenges_screen';

  static const String challengesAddNewChallengeScreen =
      '/challenges_add_new_challenge_screen';

  static const String workoutScreen = '/workout_screen';

  static const String workout1Screen = '/workout1_screen';

  static const String workoutWorkoutPlanScreen = '/workout_workout_plan_screen';

  static const String workoutWorkoutPlanExecutingPlanScreen =
      '/workout_workout_plan_executing_plan_screen';

  static const String createWorkoutPlanScreen = '/create_workout_plan_screen';

  static const String workoutPlanAddCardioScreen =
      '/workout_plan_add_cardio_screen';

  static const String workoutPlanAddExerciseOneScreen =
      '/workout_plan_add_exercise_one_screen';

  static const String workoutPlanAddExerciseScreen =
      '/workout_plan_add_exercise_screen';

  static const String workoutPlanWithAddedExerciseScreen =
      '/workout_plan_with_added_exercise_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    lpUnauthorizedScreen: (context) => LpUnauthorizedScreen(),
    signInScreen: (context) => SignInPage(),
    signUpScreen: (context) => SignInPage(),
    forgotPasswordScreen: (context) => ForgotPasswordPage(),
    changePasswordScreen: (context) => ChangePasswordPage(),

    
    lpAuthorizedCalendarScreen: (context) => LpAuthorizedCalendarScreen(),
    menuScreen: (context) => MenuScreen(),
    calendarScreen: (context) => CalendarScreen(),
    calendarAnotherMonthScreen: (context) => CalendarAnotherMonthScreen(),
    calendarWithActivityScreen: (context) => CalendarWithActivityScreen(),
    calendarWithDoneActivityScreen: (context) =>
        CalendarWithDoneActivityScreen(),
    progressScreen: (context) => ProgressScreen(),
    progressEmptyStateScreen: (context) => ProgressEmptyStateScreen(),
    challengesScreen: (context) => ChallengesScreen(),
    challengesAddNewChallengeScreen: (context) =>
        ChallengesAddNewChallengeScreen(),
    workoutScreen: (context) => WorkoutScreen(),
    workout1Screen: (context) => Workout1Screen(),
    workoutWorkoutPlanScreen: (context) => WorkoutWorkoutPlanScreen(),
    workoutWorkoutPlanExecutingPlanScreen: (context) =>
        WorkoutWorkoutPlanExecutingPlanScreen(),
    createWorkoutPlanScreen: (context) => CreateWorkoutPlanScreen(),
    workoutPlanAddCardioScreen: (context) => WorkoutPlanAddCardioScreen(),
    workoutPlanAddExerciseOneScreen: (context) =>
        WorkoutPlanAddExerciseOneScreen(),
    workoutPlanAddExerciseScreen: (context) => WorkoutPlanAddExerciseScreen(),
    workoutPlanWithAddedExerciseScreen: (context) =>
        WorkoutPlanWithAddedExerciseScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}