// ignore_for_file: file_names

import 'package:adventurist/constants/buttons.dart';
import 'package:adventurist/screens/Firebase_Practice_Screens/visitReiew.dart';
import 'package:adventurist/screens/ReviewSubScreens/writeAReview_Sub_Screen1.dart';
import 'package:flutter/material.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
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
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start, 
          children: [
  //  SizedBox(height: height *.04,),
  //          const Padding(
  //             padding: const EdgeInsets.only(left: 20),
  //             child: Text("Review",  style: TextStyle(color: Colors.black, fontSize:36, fontWeight: FontWeight.bold ),),
  //           ), 
            SizedBox(height: height* .04,),
      
          const  Padding(
              padding:  EdgeInsets.only(left: 20),
              child: Text("No reviews yet", style: TextStyle( fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: height *.02,),
          const  Padding(
              padding:  EdgeInsets.only(left: 20),
              child: Text("If you have not written any reviews yet, get started!",style: TextStyle( fontSize: 18, color: Colors.black),),
            ),
      
            SizedBox(height: height* .05,),
      
            Row(                         // custom Buttons
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    
                    CustomButton(                   
                        borderColor: Colors.black,
                       text: 'Write a review',
                       onPressed: () {
                        Navigator.push(context,
                         MaterialPageRoute(builder: (context) =>const WriteReviewSubScreen1()),
                       );
                          },
                           buttonWidth: 160, // Set the desired width for the button
                           buttonHeight: 60, // Set the desired height for the button
                          ),
        
       const SizedBox(width: 10,),
        
                   CustomButton(             
                        borderColor: Colors.black,
                      text: 'Upload a photo',
                      onPressed: () {
                         },
                          buttonWidth: 160, // Set the desired width for the button
                          buttonHeight: 60, // Set the desired height for the button
                         ),
          ]
          ),
      
           SizedBox(height: height*.04,),
          
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
                           text: "What to know",
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

SizedBox(height: height* .07,),
             const Center(child: Text("Is Adventurist missing a place?",  style: TextStyle( fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),)),
             
 SizedBox(height: height* .02,),
            const  Center(child: Text("Tell us about it so we can improve what we show",  style: TextStyle( fontSize: 16, color: Colors.black),)),
          
          
    SizedBox(height: height* .04,),      
          Center(
            child: CustomButton(
                             borderColor: Colors.black,
                             icon: const Icon(Icons. add_location_alt_outlined, color: Colors.black,),
                             text: "Add a missing place",
                             onPressed: () {
                                },
                                 buttonWidth: 250, 
                                 buttonHeight: 60, 
                                ),
          ),

          SizedBox(height: height* .02,), 

           // Center(
           //   child: CustomButton(
           //               text: 'Visit your reviews',
           //               textColor: Colors.white,
           //               backgroundColor: Colors.black,
           //               onPressed: () {
           //                Navigator.push(context, MaterialPageRoute(builder: (context) => VisitReviewScreen(),));
           //                  },
           //                   buttonWidth: 190, // Set the desired width for the button
           //                   buttonHeight: 60, // Set the desired height for the button
           //                  ),
           // ),
        SizedBox(height: height* .1,),
          ],
        ),
     
      ),
    );
  }
}