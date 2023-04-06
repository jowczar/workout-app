import 'package:flutter/widgets.dart';
import 'package:workout_app/screens/lp_unauthorized_screen/lp_unauthorized_screen.dart';

class Routes {
  static const String lpUnauthorizedScreen = '/lp_unauthorized_screen';

  static Map<String, WidgetBuilder> routes = {
    lpUnauthorizedScreen: (context) => LpUnauthorizedScreen(),
  };
}