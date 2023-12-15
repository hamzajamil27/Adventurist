import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:adventurist/models/TopExperiences/topexperience.dart';
import 'package:adventurist/models/TopExperiences/topexperienceitemdata.dart';
import 'package:adventurist/models/TopExperiences/topexperienceitemmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/buttons.dart';

class SearchScreen extends StatefulWidget {

  const SearchScreen({super.key, });

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  
  @override
  Widget build(BuildContext context) {
    
    final height = MediaQuery.of(context).size.height * 1;
    final width  = MediaQuery.of(context).size.width  * 1;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar( 
        elevation: 0,
        automaticallyImplyLeading: false,
        // toolbarHeight: 120,
        backgroundColor: Colors.white,
      
        
        title: const Padding(
          padding:  EdgeInsets.only(left: 20, top: 20),
          child:  Text("Search", style: TextStyle(
              fontSize: 34,
              color: fullblack,
              fontWeight: FontWeight.bold,
        
            ),),
        ),

          bottom:  PreferredSize(        //search bar is made using CupertinTextfield in AppBar using Bottom widget

          preferredSize: const Size.fromHeight(90),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
            child: Row(
              children: [
                Expanded(
                  child: CupertinoTextField(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    placeholder: "Where to ?", style: const TextStyle( color: Color(0xff7b7b7b)),
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(Icons.search, color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xfff7f7f7),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: CupertinoColors.black, width: 2.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ), 

      ),

      

      body: SingleChildScrollView(  scrollDirection: Axis.vertical,
        child: Column(
          children:  [
          
          SizedBox(height: height * .04),
            
        //   const Padding(
        //  padding:  EdgeInsets.only(left: 20),
        //  child:   Align( alignment: Alignment.topLeft,
        //      child:  Text("Your Recent Searches", style: TextStyle(
        //         fontFamily: Medium,
        //         fontSize: 26,
        //         color: fullblack,
        //         fontWeight: FontWeight.bold,
        //       ),
        //       ),
        //    ),
        //    ),
      
      // SizedBox(
      //   height: height*.04),
      
      
          // Padding(
          //   padding: const EdgeInsets.only(left: 20),
          //   child: Align(alignment: Alignment.topLeft,
          //     child: Container(  height: height*.09, width: width* .5,
          //       decoration: BoxDecoration(
          //          borderRadius: BorderRadius.circular(30),
          //           border: Border.all(
          //            color: Colors.grey,
          //             width: 2.0,
          //       ),
            
          //     ),
          //       child: const Padding(
          //         padding:  EdgeInsets.all(8.0),
          //         child: Column(
          //           children:  [ 
          //               Text("New York City", style: TextStyle(
          //         fontFamily: Medium,
          //         fontSize: 22,
          //         color: fullblack,
          //         fontWeight: FontWeight.bold,
          //                   ),
          //                   ),
                          
          //                   SizedBox(height: 5,),
                            
          //         Text("New York", style: TextStyle(
          //         fontFamily: Medium,
          //         fontSize: 14,
          //         color: Colors.grey,
          //         fontWeight: FontWeight.bold,
          //                   ),
          //                   ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
      
      SizedBox(height: height*.03,),
          
          Container(                        // See whats Good Near By
           height: height * .28,
           width: width * .85,
           decoration: const BoxDecoration(
           borderRadius: BorderRadius.all(Radius.circular(10),), 
          // image: DecorationImage(image: AssetImage("assets/dubai.jpg"),
          // fit: BoxFit.cover),
          color: Colors.teal,
          ),
           
           child: Column(                 
             children:  [ 
              SizedBox(height: height* .03,),
             const Text("See What's Good Nearby", 
              style: TextStyle(fontFamily: Medium, fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
          
           SizedBox(height: height*.04,),
          
                CustomButton(      //  calling a button from buttons.dart 
                      icon: const Icon(Icons.location_on, color: Colors.black,),
                      borderColor: Colors.black,
                       text: 'Turn on Location setting',
                       onPressed: () {
                          },
                           buttonWidth: 250, // Set the desired width for the button
                           buttonHeight: 50, // Set the desired height for the button
                          ),
         
             ],
         
           ),
          ),
          SizedBox(height: height*.05,),
         const Padding(
           padding: EdgeInsets.only(left: 20, right: 20),
           child: Align(alignment: Alignment.topLeft,
             child: Text("Top Experiences on Adventurist", 
              style: TextStyle(
                    fontFamily: Medium,
                    fontSize: 26,
                    color: fullblack,
                    fontWeight: FontWeight.bold,
                  ),),
           ),
         ),
      SizedBox(height: height* .02),
         SizedBox(  
           height: height * .5,           
          
           child: ListView.builder(   // ListView.Builder for TopExperience
             scrollDirection: Axis.horizontal,
             itemCount: TopExperienceItemModeldata.itemCount,
             itemBuilder: (context, index){
             TopExperienceItemModel model = TopExperienceItemModeldata.getStatusItem(index);
            
             return TopExperience(
               imagePath: model.imagePath, 
               placeName: model.placeName, 
               companyName: model.companyName, 
               price: model.price,
               ); 
             }
             ),
         ),
SizedBox( height: height*.06 ),
         const Padding(
           padding: EdgeInsets.only(left: 20, right: 20),
           child: Align(alignment: Alignment.topLeft,
             child: Text("Destinations Adventurers love", 
              style: TextStyle(
                    fontFamily: Medium,
                    fontSize: 26,
                    color: fullblack,
                    fontWeight: FontWeight.bold,
                  ),),
           ),
         ),
       
         SizedBox(height: height* .02),
       
         Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: height*.2,
            width: width*.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(image: NetworkImage("https://images.pexels.com/photos/14406067/pexels-photo-14406067.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              fit: BoxFit.fill),
            ), 
            child: const Align( alignment: Alignment.bottomCenter,
              child: Text("Lahore", 
              style: TextStyle(
                fontFamily: Medium, 
                fontSize: 24, 
                fontWeight: FontWeight.bold,
                color: Colors.white),),
            ),
            ),

           
           SizedBox(width: width * .02,),
            Container(height: height*.2,
            width: width*.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(image: NetworkImage("https://images.pexels.com/photos/1057840/pexels-photo-1057840.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              fit: BoxFit.fill),
            ),
             child: const Align( alignment: Alignment.bottomCenter,
              child: Text("Berlin", 
              style: TextStyle(
                fontFamily: Medium, 
                fontSize: 24, 
                fontWeight: FontWeight.bold,
                color: Colors.white),),
            ),
            ),
          ],

         ),
          
          SizedBox(height: height* .02),

           Row( mainAxisAlignment: MainAxisAlignment.center,
                   children: [
            Container(height: height*.2,
            width: width*.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(image: NetworkImage("https://images.pexels.com/photos/1823681/pexels-photo-1823681.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              fit: BoxFit.fill),
            ),
             child: const Align( alignment: Alignment.bottomCenter,
              child: Text("Chicago", 
              style: TextStyle(
                fontFamily: Medium, 
                fontSize: 24, 
                fontWeight: FontWeight.bold,
                color: Colors.white),),
            ),
            ),
           
           SizedBox(width: width * .02,),
            Container(height: height*.2,
            width: width*.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(image: NetworkImage("https://images.pexels.com/photos/1239162/pexels-photo-1239162.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              fit: BoxFit.fill),
            ),
             child: const Align( alignment: Alignment.bottomCenter,
              child: Text("New York", 
              style: TextStyle(
                fontFamily: Medium, 
                fontSize: 24, 
                fontWeight: FontWeight.bold,
                color: Colors.white),),
            ),
            ),
                   ],
           
                  ),
      SizedBox(height: height*.1,), 
        ]),
      ),
    );
  }
}