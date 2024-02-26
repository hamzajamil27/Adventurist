// ignore_for_file: file_names

import 'package:adventurist/constants/buttons.dart';
import 'package:adventurist/screens/Firebase_Practice_Screens/visitReiew.dart';
import 'package:adventurist/screens/ReviewSubScreens/writeAReview_Sub_Screen1.dart';
import 'package:adventurist/screens/signin_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  final auth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height * 1;


    return Scaffold(  
backgroundColor: Colors.white,
      appBar: AppBar( 
        elevation: 0,
        automaticallyImplyLeading: false,
        // toolbarHeight: 120 ,
        title: const Text("Review", style: TextStyle(color: Colors.black, fontSize:36 ),),
         titleSpacing: 20,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        
      ),


      body: SingleChildScrollView( 
        child: (user != null) ? Column( crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start, 
          children: [

      
            SizedBox(height: height* .05,),
      

             Container(
               height: height * .7,
             width: double.infinity,
             decoration: const BoxDecoration( 
             image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/4215110/pexels-photo-4215110.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
             fit: BoxFit.fill),
                    ),
          
               child: Column(
                 children:  [ 
          
                   SizedBox(height: height*.3,),
          
                   const Padding(              // Text
                     padding: EdgeInsets.only( left: 30, right: 30),
                     child: Align(alignment: Alignment.center,
                       child: Text("We want you to write us a review", 
                       style: TextStyle( fontSize: 38, fontWeight: FontWeight.bold, color:Colors.white),),
                     ),
                   ),
                   
                  const  Padding(              // Text
                     padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                     child: Align(alignment: Alignment.center ,
                       child: Text("Bacause who else would we turn to for travel advice?", 
                       style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                     ),
                   ),
          
                    Padding(       // Pack your Bags Button
                  padding: const EdgeInsets.only(top: 30, left: 30),
                  child: Align(alignment: Alignment.centerLeft,
                    child: CustomButton(
                           text: "Write a review",
                           onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>const WriteReviewSubScreen1()),);
                              },
                               buttonWidth: 170, 
                               buttonHeight: 50, 
                              ),
                  ),
                ),
                 ],
               ),
             ),

        SizedBox(height: height* .1,),
          ],
        ):

        Column( crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [


            SizedBox(height: height* .05,),


            Container(
              height: height * .7,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/4215110/pexels-photo-4215110.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    fit: BoxFit.fill),
              ),

              child: Column(
                children:  [

                  SizedBox(height: height*.3,),

                  const Padding(              // Text
                    padding: EdgeInsets.only( left: 30, right: 30),
                    child: Align(alignment: Alignment.center,
                      child: Text("We want you to write us a review",
                        style: TextStyle( fontSize: 38, fontWeight: FontWeight.bold, color:Colors.white),),
                    ),
                  ),

                  const  Padding(              // Text
                    padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: Align(alignment: Alignment.center ,
                      child: Text("Because who else would we turn to for travel advice?",
                        style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),

            Center(child: Text("Please Login yourself for review")),

            SizedBox(height: 20,),
            Align(alignment: Alignment.center,
              child: CustomButton(
                backgroundColor: Colors.black,
                text: "sign in",
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const SignInScreen()),);
                },
                buttonWidth: 170,
                buttonHeight: 50,
              ),
            ),
            SizedBox(height: height* .1,),
          ],
        )


     
      ),
    );
  }
}
