import 'package:beat_jerky/screens/splash_screen.dart';
import 'package:beat_jerky/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        //   colorScheme: ColorScheme.dark(background: blackColor),
        scaffoldBackgroundColor: blackColor,
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
