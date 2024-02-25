import 'package:adventurist/screens/splashScreen.dart';
import 'package:connection_notifier/connection_notifier.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';



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
  bool _isConnected = true;

  @override
  Widget build(BuildContext context) {
    return  ConnectionNotifier(
      connectionNotificationOptions: const ConnectionNotificationOptions(
        alignment: AlignmentDirectional.bottomCenter,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
         theme: ThemeData( primarySwatch: Colors.teal),

        initialRoute: '/splash',
        routes: {
          '/splash': (context) => const SplashScreen(),
          // Add your other routes here
        },

      ),
    );
  }
}