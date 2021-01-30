import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:listly/features/home-screen/presentation/screen/homescreen.dart';
import 'package:listly/features/login/presentation/screens/splash-screen.dart';

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FirebaseAuth.instance.currentUser != null
        ? HomeScreen()
        : SplashScreen();
  }
}
