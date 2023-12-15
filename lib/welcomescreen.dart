import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:adventurist/pagetwo.dart';
import 'package:adventurist/screens/signin_Screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) { 

    final height = MediaQuery.of(context).size.height * 1;
   

    return Scaffold( 
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(alignment:Alignment.topRight,     // skip button
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: InkWell( onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const PageTwo()),),
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
           
      
             Align(alignment: Alignment.center,  // circle Avatar
                child: SizedBox( height: height*.1,
                
                 child: const Image(image: AssetImage("assets/Adventurist Remove Background Logo.png")),
                ),
                ), 
                SizedBox(height: height*.05),
            
            //const SizedBox(height: 20,),
      
            const Align(
              alignment: Alignment.topLeft, 
            child:Padding(                     // Sign in to start planning
              padding: EdgeInsets.all(20.0),
              child: Text("Sign in to start planning your trip.", 
              style: TextStyle(fontFamily: Bold ,fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black),),
            ),),
      
            Align(alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Wrap(
                  children: [
                    const Text("By proceeding you agree, to our ", style: TextStyle(fontFamily: Regular, color: blackColor),),
                    InkWell(onTap:(){}, 
                    child: const Text("Term of Use ", 
                    style: TextStyle(fontFamily: Bold, color: fullblack, decoration: TextDecoration.underline,
                  decorationColor: Colors.black, // Customize the underline color
                  decorationThickness: 2.0, // Customize the underline thickness
                  ),)),
                   const Text("and confirm you have read our ",style: TextStyle(fontFamily: Regular, color: blackColor),),
                     InkWell(onTap:(){}, 
                    child: const Text("Privacy and Cookie statement", 
                    style: TextStyle(fontFamily: Bold, color: fullblack,
                     decoration: TextDecoration.underline,
                  decorationColor: Colors.black, // Customize the underline color
                  decorationThickness: 2.0, // Customize the underline thickness
                  ),)),
                  
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 20.0),
            //   child: Wrap(
            //     children: [
            //    // const  Text("confirm you have read our",style: TextStyle(fontFamily: Regular, color: blackColor),),
            //       InkWell(onTap:(){}, 
            //       child: const Text(" Privacy and Cookie statement", 
            //       style: TextStyle(fontFamily: Bold, color: fullblack,
            //        decoration: TextDecoration.underline,
            //     decorationColor: Colors.black, // Customize the underline color
            //     decorationThickness: 2.0, // Customize the underline thickness
            //     ),)),
            //     ],
            //   ),
            // ),
            
          const  SizedBox(height: 40,),
         
            SizedBox(  width: 340,                    // continue with google button
              child: TextButton( onPressed: (){}, 
                  style: TextButton.styleFrom(
                    
                     backgroundColor: Colors.white, // Button background color
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                    shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
               side: const BorderSide(
                color: Colors.black, // Change the border color here
                width: 2.0, // Set the border width
              ),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
              Icon(Icons.android), // Replace with the Google icon or any other icon
              SizedBox(width: 10), // Add some space between the icon and text
              Text("Continue with Google",
                style: TextStyle(fontFamily:Medium, fontWeight: FontWeight.bold, fontSize: 20, color: fullblack),
              ),
                    ],
                  ),
                  ),
            ),
              
           const   SizedBox(height: 20,),
      
             SizedBox(  width: 340,                    // Continue with E-mail
              child: TextButton( onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const SignInScreen()),),
                );
              }, 
                  style: TextButton.styleFrom(
                    
                     backgroundColor: Colors.white, // Button background color
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                    shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
               side: const BorderSide(
                color: Colors.black, // Change the border color here
                width: 2.0, // Set the border width
              ),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
              Icon(Icons.mail_outline, color: blackColor,), // Replace with the Google icon or any other icon
              SizedBox(width: 10), // Add some space between the icon and text
              Text("Continue with email",
                style: TextStyle(fontFamily:Medium, fontWeight: FontWeight.bold, fontSize: 20, color: fullblack),
              ),
                    ],
                  ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}