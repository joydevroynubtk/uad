import 'package:brain_school_starter/routes.dart';
import 'package:brain_school_starter/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:brain_school_starter/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'University App Management',
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          primaryColor: kPrimaryColor,
          appBarTheme: AppBarTheme(
            color: kPrimaryColor,
            elevation: 0,
          ),
          textTheme:
              GoogleFonts.sourceSansProTextTheme(Theme.of(context).textTheme)
                  .apply()
                  .copyWith(
                    bodyLarge: TextStyle(
                        color: kTextWhiteColor,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                    bodyMedium: TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 28.0,
                    ),
                    titleMedium: TextStyle(
                        color: kTextWhiteColor,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500),
                    titleSmall: TextStyle(
                        color: kTextWhiteColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300),
                  ),
          inputDecorationTheme: InputDecorationTheme(
              labelStyle: TextStyle(
                  fontSize: 15.0, color: kTextLightColor, height: 0.5),
              hintStyle: TextStyle(
                  fontSize: 16.0, color: kTextBlackColor, height: 0.5),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor, width: 0.7),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: kTextLightColor),
              ),
              disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kTextLightColor),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kErrorBorderColor, width: 1.2),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: kErrorBorderColor,
                width: 1.2,
              )))),
      //initial route is splash screen
      //mean first screen
      initialRoute: SplashScreen.routeName,
      //define the routes file here in oder to access the routes any where all over the app
      routes: routes,
    );
  }
}
