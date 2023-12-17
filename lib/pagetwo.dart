import 'package:adventurist/constants/buttons.dart';
import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';
import 'BottomNavigationBar/navigationbar.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: height*.15),
            
               Align(alignment: Alignment.center,  // circle Avatar
                child: SizedBox( height: height*.1,
                
                 child: const Image(image: AssetImage("assets/Adventurist Remove Background Logo.png")),
                ),
                ), 
            
            SizedBox(height: height*.05),
            
             const   Align(
              alignment: Alignment.topLeft, 
            child:Padding(                    // Discover Traveller recommended spots
              padding: EdgeInsets.all(20.0),
              child: Text("Discover traveller reommended spots near you where ever you are", 
              style: TextStyle(fontFamily: Medium ,fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black),),
            ),
            ),
             
              SizedBox(height: height * .1,),
        
             CustomButton(      //  calling a button from buttons.dart
                          borderColor: Colors.black,
                           backgroundColor: Colors.black,
                           text: 'Allow Location Data',
                           textColor: Colors.white,
                           onPressed: (){},
                               buttonWidth: width*0.8, // Set the desired width for the button
                               buttonHeight: 60, // Set the desired height for the button
                              
                              ),
             SizedBox(height: height *.02,),
            
             InkWell( onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const NavigatorBar()),),
                );
              },
                child: const Text("Not Now", 
                style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decoration: TextDecoration.underline,
                decorationColor: Colors.black  , // Customize the underline color
                decorationThickness: 2.0, // Customize the underline thickness
                ),
                ),),
              
          ],
        ),
      ),
    ) ;
  }
}
