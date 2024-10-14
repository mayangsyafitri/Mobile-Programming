
import 'package:flutter/material.dart';

import '../WelcomeScreen.dart';
import '../home_screen.dart';
import '../profile_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String initialRoute = '/';

  static final routes = <String, WidgetBuilder>{
    '/': (context) => WelcomeScreen(), 
    '/home': (context) => HomeScreen(),
    '/profile': (context) => ProfileScreen(),
  };
}
