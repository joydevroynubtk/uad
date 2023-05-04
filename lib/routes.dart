import 'package:brain_school_starter/screens/my_profile/my_profile.dart';
import 'screens/home_screen/home_screen.dart';
import 'package:brain_school_starter/screens/login_screen/login_screen.dart';
import 'package:brain_school_starter/screens/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MyProfileScreen.routeName: (context) => MyProfileScreen(),
};
