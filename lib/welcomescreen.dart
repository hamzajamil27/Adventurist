
import 'package:Adventurist/pagetwo.dart';
import 'package:Adventurist/screens/signin_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'BottomNavigationBar/navigationbar.dart';
import 'Utilities/flutterToastUtilities.dart';
import 'constants/buttons.dart';
import 'constants/colors/fontcolors.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) { 
    bool loading= false;
    // final auth = FirebaseAuth.instance;
      final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    Future<void> _GoogleSignin() async {
      setState(() {
        loading = true;
      });
      try {
        final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
        if (googleUser != null) {
          final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
          final AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken,
            idToken: googleAuth.idToken,
          );
          final UserCredential userCredential = await _auth.signInWithCredential(credential);
          final User? user = userCredential.user;

          // If user is not null, navigate to the NavigatorBar screen
          if (user != null) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const NavigatorBar()),
            );
          }
        }
      } catch (error) {
        FlutterToastUtils().toastMessage("Error signing in with Google");
        print('Error signing in with Google');
      } finally {
        setState(() {
          loading = false;
        });
      }
    }

    return Scaffold( 
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(alignment:Alignment.topRight,     // skip button
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: InkWell( onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const PageTwo()),),
                );
              },
                child: const Text("Skip", 
                style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decoration: TextDecoration.underline,
                decorationColor: Colors.black, // Customize the underline color
                decorationThickness: 2.0, // Customize the underline thickness
                ),
                ),
              ),
              ),
            ),
           
      Container(height: height*.19,
          child: Image(image: AssetImage("assets/Iconbg.png"))),
             // Align(alignment: Alignment.center,  // circle Avatar
             //    child: SizedBox( height: height*.1,
             //
             //     child: const Image(image: AssetImage("assets/Iconbg.png", )),
             //    ),
             //    ),
                SizedBox(height: height*.01),
            
            //const SizedBox(height: 20,),
      
            const Align(
              alignment: Alignment.center,
            child:Padding(                     // Sign in to start planning
              padding: EdgeInsets.all(20.0),
              child: Text("Sign in to start",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black),),
            ),),
      
            Align(alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Wrap(
                  children: [
                    const Text("Sign in to unlock exclusive deals and access personalized recommendations. Join now for free and enjoy a seamless booking experience.", style: TextStyle(fontFamily: Regular, color: blackColor),),
                  ],
              ),
            ),
            ),

            SizedBox(height: height*0.1,),
         
            CustomButton(      //  calling a button from buttons.dart
                          borderColor: Colors.black,
                           backgroundColor: Colors.white,
                           icon: Icon(FontAwesomeIcons.google),
                           text: 'Sign in',
                           textColor: Colors.black,
                           loading: loading,
                           onPressed: (){
                             _GoogleSignin();
                           },
                               buttonWidth: width*0.8, // Set the desired width for the button
                               buttonHeight: 60, // Set the desired height for the button
                              
                              ),
              
           const   SizedBox(height: 20,),

           CustomButton(      //  calling a button from buttons.dart
                          borderColor: Colors.black,
                           backgroundColor: Colors.white,
                           icon: Icon(Icons.mail_outline, color: blackColor,),
                           text: 'Continue with email',
                           textColor: Colors.black,
                           loading: loading,
                           onPressed: (){
                             Navigator.push(
                              context, 
                              MaterialPageRoute(builder: ((context) => const SignInScreen()),),);
                           },
                               buttonWidth: width*0.8, // Set the desired width for the button
                               buttonHeight: 60, // Set the desired height for the button
                              
                              ),
      
           
          ],
        ),
      ),
    );
  }
}