import 'package:Adventurist/screens/homescreen.dart';
import 'package:Adventurist/screens/splashScreen.dart';
import 'package:Adventurist/welcomescreen.dart';
import 'package:connection_notifier/connection_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'BottomNavigationBar/navigationbar.dart';



void main() async{
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();

  runApp( const Adventurist());
}

class Adventurist extends StatefulWidget {
  const Adventurist({super.key});


  @override
  State<Adventurist> createState() => _AdventuristState();
}

class _AdventuristState extends State<Adventurist> {

  @override
  void initState() {
    super.initState();
    isLogin();
  }

  bool _isConnected = true;

  Future<bool> checkAuthentication(BuildContext context) async {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    return user != null;
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
    return  ConnectionNotifier(
      connectionNotificationOptions: const ConnectionNotificationOptions(
        alignment: AlignmentDirectional.bottomCenter,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
         theme: ThemeData( primarySwatch: Colors.teal),
        home: FutureBuilder(
          // Check the authentication state here
          future: checkAuthentication(context),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.data == true) {
                // User is logged in, navigate to Available screen
                return NavigatorBar();
              } else {
                // User is not logged in, navigate to Login screen
                return WelcomeScreen();
              }
            } else {
              // Show a loading indicator while checking authentication
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}