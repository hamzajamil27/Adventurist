// ignore_for_file: file_names

import 'package:adventurist/welcomescreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
   void initState() {
    super.initState();
    // Introduce a delay and then navigate to the home screen
    Future.delayed(const Duration(seconds: 5), () {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const WelcomeScreen()),),
                );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container( height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/Adventurist Splash Screen.png"), fit: BoxFit.cover)
      ),
      ),
    );
  }
}