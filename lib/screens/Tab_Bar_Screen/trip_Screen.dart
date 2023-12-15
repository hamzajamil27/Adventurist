// ignore_for_file: file_names

import 'package:adventurist/constants/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TripScreen extends StatefulWidget {
  const TripScreen({super.key});

  @override
  State<TripScreen> createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {
  @override
  Widget build(BuildContext context) {
     
    final height = MediaQuery.of(context).size.height * 1;
    final width  = MediaQuery.of(context).size.width  * 1;

    return SingleChildScrollView(
      child: Column(
          children:  [
      
    
            SizedBox(height: height * .06 ),
      
           const  ListTile(
              leading: Icon(Icons.favorite_sharp, color: Colors.black, size: 36,),
              title: Text("Saved Places You would have liked to visit", style:TextStyle(
                fontSize: 16
              ) ,),
             ),
      
         SizedBox(height: height * .02 ),
      
            const  ListTile(
              leading: Icon(Icons.place_outlined, color: Colors.black, size: 36,),
              title: Text("See your saves on a map", style:TextStyle(
                fontSize: 16
              ) ,),
             ),
             
         SizedBox(height:  height * .02 ),
      
            const  ListTile(
              leading: Icon(Icons.note_alt_sharp, color: Colors.black, size: 36,),
              title: Text("keep track of notes, link and more", style:TextStyle(
                fontSize: 16
              ) ,),
             ),
             
         SizedBox(height:  height * .02 ),
         
            const  ListTile(
              leading: Icon(Icons.person_add_alt, color: Colors.black, size: 36,),
              title: Text("Share and collaborate on your plans", style:TextStyle(
                fontSize: 16
              ) ,),
             ),
            
            
            SizedBox(height: height * .08),
             
            const Padding(              //Text 
               padding: EdgeInsets.only(left: 30, bottom: 10),
               child: Align( alignment: Alignment.topLeft,
                child: Text("Trip Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
             ),
            
              SizedBox( height: height * .07,      // Cupertino Text Field
              width: width * .9,
                child: CupertinoTextField(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 10),
                  placeholder: "Ex: Weekend in NYC", style: const TextStyle( color: Colors.grey),
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(Icons.search, color: Colors.black),
                  ), 
                  
                  decoration: BoxDecoration(
                    color: const Color(0xfff7f7f7),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: CupertinoColors.black, width: 2.0),
                  ),
                ),
              ), 
           
           SizedBox(height: height* .04,),
           
             CustomButton(      //  calling a button from buttons.dart 
                          borderColor: Colors.black,
                           text: 'Create a Trip',
                           onPressed: () {
                              },
                               buttonWidth: 250, // Set the desired width for the button
                               buttonHeight: 65, // Set the desired height for the button
                              ),
         
         SizedBox(height: height * .02,),
    
        InkWell(
          onTap: (){},
    
          child: const Text("Log in to Access Your Trip",  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),),
         
         SizedBox(height: height*.03,)
          ]
        
      ),
    );
  }
}