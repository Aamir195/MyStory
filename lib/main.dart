import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practise/app_screen/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app_screen/onbording/screen_one.dart';
import 'package:flutter/services.dart';

int initScreen;

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt("initScreen");
  await preferences.setInt("initScreen", 1);

  runApp(MaterialApp(
    title: "My Story",
    home: OnboardingScreenOne(),
    debugShowCheckedModeBanner: false,
    themeMode: ThemeMode.system,
    theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: GoogleFonts.poppins().fontFamily),
    initialRoute: initScreen == 0 || initScreen == null ? "onbord" : "home",
    routes: {
      "home": (context) => HomePage(),
      "onbord": (context) => OnboardingScreenOne()
    },
  ));
}
