import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:practise/app_screen/home.dart';
import 'package:practise/app_screen/onbording/componets/theme.dart';

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

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    {
      return GetMaterialApp(
          title: "My Story",
          home: OnboardingScreenOne(),
          debugShowCheckedModeBanner: false,
          theme: Themes().lightTheme,
          darkTheme: Themes().darktheme,
          initialRoute:
              initScreen == 0 || initScreen == null ? "onbord" : "home",
          routes: {
            "home": (context) => HomePage(),
            "onbord": (context) => OnboardingScreenOne()
          });
    }
  }
}
