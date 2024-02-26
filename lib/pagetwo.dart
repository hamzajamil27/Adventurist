
import 'package:flutter/material.dart';
import 'BottomNavigationBar/navigationbar.dart';
import 'constants/buttons.dart';

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

            Container(height: height*.19,
                child: Image(image: AssetImage("assets/Iconbg.png"))),
            
            SizedBox(height: height*.05),
            
             const   Align(
              alignment: Alignment.topLeft, 
            child:Padding(                    // Discover Traveller recommended spots
              padding: EdgeInsets.all(20.0),
              child: Text("Unlock the World's Culinary and Accommodation Adventures with Ease",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black),),
            ),
            ),
             
              SizedBox(height: height * .05,),
        
             CustomButton(      //  calling a button from buttons.dart
                          borderColor: Colors.black,
                           backgroundColor: Colors.white,
                           icon: Icon(Icons.arrow_right_alt, size: 50, color: Colors.black,),
                           textColor: Colors.white,
                           onPressed: (){
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const NavigatorBar()),),
                             );
                           },
                               buttonWidth: width*0.45, // Set the desired width for the button
                               buttonHeight: 40, text: '', // Set the desired height for the button
                              
                              ),
             SizedBox(height: height *.02,),
            
             // InkWell( onTap: () {
             //
             //  },
             //    child: const Text("Not Now",
             //    style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decoration: TextDecoration.underline,
             //    decorationColor: Colors.black  , // Customize the underline color
             //    decorationThickness: 2.0, // Customize the underline thickness
             //    ),
             //    ),),
             //
          ],
        ),
      ),
    ) ;
  }
}
