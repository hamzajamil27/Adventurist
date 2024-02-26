// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../BottomNavigationBar/navigationbar.dart';
import '../welcomescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
   void initState() {
    super.initState();
    isLogin();
    // Introduce a delay and then navigate to the home screen  
  }

  void isLogin(){
      final auth = FirebaseAuth.instance;
      final user = auth.currentUser;

      if(user != null){                                       // If user is Signin then naviagate to NavigatorBar
         Future.delayed(const Duration(seconds: 5), () {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const NavigatorBar()),),
                );
    });
      }
      else {                                                // If user is not signin then naviagate to WelcomeScreen
        Future.delayed(const Duration(seconds: 5), () {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const WelcomeScreen()),),
                );
    });
      }
    }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container( height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/SplashScreen.png"), fit: BoxFit.cover)
      ),
      ),
    );
  }
}