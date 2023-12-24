import 'dart:async';

import 'package:beat_jerky/screens/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return const LoginScreen();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
