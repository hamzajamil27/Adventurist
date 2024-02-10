import 'package:adventurist/RestaurantsCard/restaurants.dart';
import 'package:adventurist/Tour%20Pages/tourpagelist.dart';
import 'package:adventurist/screens/Hotels_ThingsToDo_Restaurant_Forums_Screens%20and%20Subscreens/firstSimpleScreen.dart';

import '../RestaurantsCard/RestaurantCityDetailsScreen.dart';
import '../models/WeekendTripIdeas/tripideasweekenditemdata.dart';
import '../models/WeekendTripIdeas/tripideaweekenditemmodel.dart';
import '../models/WeekendTripIdeas/weekendtripideas.dart';
import '../models/beachdayforbooks/beachday.dart';
import '../models/beachdayforbooks/beachdayitemdata.dart';
import '../models/beachdayforbooks/beachdayitemmodel.dart';
import '../models/beyondthebeach/beyondthebeach.dart';
import '../models/beyondthebeach/beyondthebeachitemdata.dart';
import '../models/beyondthebeach/beyondthebeachitemmodel.dart';
import '../models/summer_vacations/summerVacationItemModel.dart';
import '../models/summer_vacations/summervacationitemdata.dart';
import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';
import '../constants/buttons.dart';
import '../models/summer_vacations/SummerVacation.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
@override
 Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return  Scaffold( 
        backgroundColor: Colors.white,
      body: SingleChildScrollView( scrollDirection: Axis.vertical,
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              
          children: [
            Container( color: Colors.teal,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                  SizedBox(height: height * .025),
                 
                  Row( mainAxisAlignment: MainAxisAlignment.end,   // Circle Avatar Profile Pic
                    children: [ 
                      Container( height: 50,      // creating a container for circle avatar to give black borders
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black, 
                        width: 2.0,
                        
                        // Set the border width
                      ),
                    ),
                    child: const CircleAvatar( 
                        backgroundImage: NetworkImage("https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      ),
                    ),
                    
                 
                  const Padding(              // Cart icon using flexi_cart_updater 1.0.3 
                     padding: EdgeInsets.symmetric(horizontal: 20),
                     child: Icon(Icons.shopping_cart),  
                   ),  
                      
                    ],
                  ),
                 const Padding(    // Explore Text
                   padding:  EdgeInsets.symmetric(horizontal: 20),
                   child: Text('Explore', style: TextStyle(fontFamily: Medium, fontSize: 34, fontWeight: FontWeight.bold),),
                 ),
           
              SizedBox(height: height * .04,),
               
                Row(                          // Hotel and Things to do Button
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                  CustomButton(                   //  calling a button from buttons.dart

                    icon: const Icon(Icons.bed, color: Colors.black,),
                     text: 'Hotels',
                     onPressed: () {
            Navigator.push( context, MaterialPageRoute(builder: (context) =>  const FirstSimpleScreen(category: 'Hotel')),
            );
                      
                        },
                         buttonWidth: 155, // Set the desired width for the button
                         buttonHeight: 60, // Set the desired height for the button
                        ),
      
      const SizedBox(width: 10,),
      
                 CustomButton(                  //  calling a button from buttons.dart
                   
                   icon: const Icon(Icons.local_activity, color: Colors.black,),
                    text: 'Things to do',
                    onPressed: () {
                       Navigator.push( context, MaterialPageRoute(builder: (context) =>  const FirstSimpleScreen(category: 'Things to do')),
                         );
                       },
                        buttonWidth: 155, // Set the desired width for the button
                        buttonHeight: 60, // Set the desired height for the button
                       ),
            
                ],
              ),
               
            const SizedBox(height: 10),
             
             Padding(                   // custome buttom of Restaurants and forums
               padding: const EdgeInsets.only(bottom: 20),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                 
                 CustomButton(                   //  calling a button from buttons.dart

                   icon: const Icon(Icons.restaurant, color: Colors.black,),
                    text: 'Restaurants',
                    onPressed: () {
                       Navigator.push( context, MaterialPageRoute(builder: (context) =>  const FirstSimpleScreen(category: 'Restaurants')),
                         );
                       },
                        buttonWidth: 155, // Set the desired width for the button
                        buttonHeight: 60, // Set the desired height for the button
                       ),
             
                  const SizedBox(width: 10,),
             
                CustomButton(                  //  calling a button from buttons.dart

                  icon: const Icon(Icons.forum, color: Colors.black,),
                   text: 'Forums',
                   onPressed: () {
                    Navigator.push( context, MaterialPageRoute(builder: (context) =>  const FirstSimpleScreen(category: 'Forums')),
                         );
                      },
                       buttonWidth: 155, // Set the desired width for the button
                       buttonHeight: 60, // Set the desired height for the button
                      ),
                  
                  ],
                ),
             ),
         
          ],
        ),
        ),
       
       Padding(              // Discover More in Dubai Container
         padding: const EdgeInsets.only(top: 30),
         child: Container( 
          height: height * .28,
          width: width * .85,
          decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10),), 
          image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/3763190/pexels-photo-3763190.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          fit: BoxFit.cover),
         ),
          
          child: Column( 
            children:  [
             const Padding(
               padding: EdgeInsets.only(top: 20),
               child: Align(
                  alignment:Alignment.center, 
                child:Text("Discover More in\nDubai", 
                style: TextStyle(fontFamily: Medium, fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),),),
             ),
       
               Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: Align(alignment: Alignment.center,
                   child: CustomButton(                   //  calling a button from buttons.dart
                         icon: const Icon(Icons.explore, color: Colors.black,),
                          text: 'Keep Exploring',
                          onPressed: () {
                             },
                              buttonWidth: 200, // Set the desired width for the button
                              buttonHeight: 50, // Set the desired height for the button
                             ),
                 ),
               ),
       
            ],
       
          ),
         ),
       ),
SizedBox(height: height*.04,),

Padding(
  padding: const EdgeInsets.only(left: 20, right: 20),
  child: Divider(color: Colors.black,),
),
       SizedBox(height: height*.02,),
      
        const Center(                         // Text
         child: Text("Looking for Food?", 
         style: TextStyle(
          fontFamily: Medium,
          fontSize: 24,
          color: Colors.black,
          fontWeight: FontWeight.bold,
         ),
         ),
       ),
         
          SizedBox(height: height * .01,),
         
           const Padding(                     // Text
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
           child: Align( alignment: Alignment.center,
             child:  Text("Check out the top dining spots in town", 
             style: TextStyle(
              fontFamily: Medium,
              fontSize: 16, 
              color: Colors.black,
              // fontWeight: FontWeight.bold,
             ),
             ),
           ),
         ),
      ),

       Padding(                  // Looking for Food
        padding: const EdgeInsets.only(top: 30),
        child: SizedBox(  
          height: height *.33,
          
          child:
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: RestaurantModelsdata().restaurants.length,
            itemBuilder: (BuildContext context, int index) {
              return Restaurantcards(
                restaurant : RestaurantModelsdata().restaurants[index]

              );
            },
          ),
        ),
          // ListView.builder(
          //   scrollDirection: Axis.horizontal,
          //   itemCount: RestaurantModelsdata.itemCount,
          //   itemBuilder: (context, index){
          //   RestaurantModels model = RestaurantModelsdata.getStatusItem(index);
          //
          //   return GestureDetector(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => RestaurantCityDetailsScreen(restaurants: widget.restaurants),
          //         ),
          //       );
          //     },
          //     child: Restaurantcards(
          //       imageI: model.imageI,
          //       cityname: model.cityname,
          //       ),
          //   );
          //   }
          //   ),
        ), 

        
          Padding(                 // Island pic and buuton and text
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: height * .7,
            width: double.infinity,
            decoration: const BoxDecoration( 
            image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/2674062/pexels-photo-2674062.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            fit: BoxFit.fill),
                   ),
    
              child: Column(
                children:  [ 
    
                  SizedBox(height: height*.3,),
    
                  const Padding(              // Text
                    padding: EdgeInsets.only( left: 30, right: 30),
                    child: Align(alignment: Alignment.center,
                      child: Text("The Best Island in Europe", 
                      style: TextStyle(fontFamily: Medium, fontSize: 38, fontWeight: FontWeight.bold, color:Colors.white),),
                    ),
                  ),
                  
                 const  Padding(              // Text
                    padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: Align(alignment: Alignment.center ,
                      child: Text("All the Places you gotta see from the Arctic to the Aegean", 
                      style: TextStyle(fontFamily: Medium, fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                    ),
                  ),
    
                   Padding(       // Lets go Button
                 padding: const EdgeInsets.only(top: 30, left: 30),
                 child: Align(alignment: Alignment.centerLeft,
                  
                   child: CustomButton(
                          text: "Let's go",
                          onPressed: () {
                            
                             },
                              buttonWidth: 120, 
                              buttonHeight: 50, 
                             ),
                 ),
               ),
                ],
              ),
            ),
          ),
    
       SizedBox(height: height * .035,),
    
       Center(                         // Text
         child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Text("Soak up the end of Summer", 
             style: TextStyle(
              fontFamily: Medium,
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold,
             ),),

             InkWell (
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TourPageListScreen()),
                );
              },
              
              child: Text("See more\nTours", )),
           ],
         ),
       ),
        
        SizedBox(height: height* .02,),
    
      const Padding(                     // Text
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
           child: Align( alignment: Alignment.center,
             child:  Text("Outdore adventures to make every second count", 
             style: TextStyle(
              fontFamily: Medium,
              fontSize: 16, 
              color: Colors.black,
              // fontWeight: FontWeight.bold,
             ),
             ),
           ),
         ),
      ),
       
    //   SizedBox(height: height * .03),
    SizedBox(height: height* .02,),
      SizedBox(  
        height: height *.44,                 // ListView.Builder for Summer
       
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: SummerVacationItemModeldata.itemCount,
          itemBuilder: (context, index){
          SummervacationItemModel model = SummerVacationItemModeldata.getStatusItem(index);
         
          return Summervacation(
            imagePath: model.imagePath, 
            placeName: model.placeName, 
            companyName: model.companyName, 
            price: model.price,
            ); 
          }
          ),
      ),
    
      SizedBox(height: height*.02,),
      
        const Center(                         // Text
         child: Text("Easy Labor Day getaways", 
         style: TextStyle(
          fontFamily: Medium,
          fontSize: 24,
          color: Colors.black,
          fontWeight: FontWeight.bold,
         ),
         ),
       ),
         
          SizedBox(height: height * .02,),
         
           const Padding(                     // Text
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
           child: Align( alignment: Alignment.center,
             child:  Text("Trip ideas for summer's last big weekend", 
             style: TextStyle(
              fontFamily: Medium,
              fontSize: 16, 
              color: Colors.black,
              // fontWeight: FontWeight.bold,
             ),
             ),
           ),
         ),
      ),
        
         Padding(                  // Listview Builder for Weekend Trip Ideas
        padding: const EdgeInsets.only(top: 30),
        child: SizedBox(  
          height: height *.33,
          
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Tripideaweekenditemmodeldata.itemCount,
            itemBuilder: (context, index){
            Tripideaweekenditemmodel model = Tripideaweekenditemmodeldata.getStatusItem(index);
           
            return WeekEndTripIdeas(
              imageI: model.imageI, 
              cityname: model.cityname, 
              ); 
            }
            ),
        ), 
      ),
        
         Padding(                 // A summer Weekend in the Catskills
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: height * .73,
            width: double.infinity,
            decoration: const BoxDecoration( 
            image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/3743492/pexels-photo-3743492.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            fit: BoxFit.fill),
                   ),
    
              child: Column(
                children:  [ 
    
                  SizedBox(height: height*.25,),
    
                  const Padding(              // Text
                    padding: EdgeInsets.only( left: 30, right: 30),
                    child: Align(alignment: Alignment.center,
                      child: Text("A summer Weekend in the Catskills", 
                      style: TextStyle(fontFamily: Medium, fontSize: 38, fontWeight: FontWeight.bold, color:Colors.white),),
                    ),
                  ),
                  
                 const  Padding(              // Text
                    padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: Align(alignment: Alignment.center ,
                      child: Text("It's got it all-arts, eats, nature-and is right by NYC", 
                      style: TextStyle(fontFamily: Medium, fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                    ),
                  ),
    
                   Padding(       // Pack your Bags Button
                 padding: const EdgeInsets.only(top: 30, left: 30),
                 child: Align(alignment: Alignment.centerLeft,
                   child: CustomButton(
                          text: "Pack Your bags",
                          onPressed: () {
                             },
                              buttonWidth: 170, 
                              buttonHeight: 50, 
                             ),
                 ),
               ),
                ],
              ),
            ),
          ),
        
        SizedBox(height: height * .05,),
    
           const Center(                         // Text A beach day for the books
         child: Text("A beach day for the books", 
         style: TextStyle(
          fontFamily: Medium,
          fontSize: 24,
          color: Colors.black,
          fontWeight: FontWeight.bold,
         ),
         ),
       ),
         
          SizedBox(height: height * .02,),
         
           const Padding(                     // Text A beach day for the books
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
           child: Align( alignment: Alignment.center,
             child:  Text("Spend the summer on the European Island", 
             style: TextStyle(
              fontFamily: Medium,
              fontSize: 16, 
              color: Colors.black,
              // fontWeight: FontWeight.bold,
             ),
             ),
           ),
         ),
      ),
      SizedBox(height: height*.05,),
        
            SizedBox(  
              height: height *.4,
              
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Beachdayitemmodeldata .itemCount,
                itemBuilder: (context, index){
                Beachdayitemmodel model = Beachdayitemmodeldata .getStatusItem(index);
               
                return BeachDay(
                  imagebeach:model.imagebeach, 
                  beachname: model.beachname,  
                  ); 
                }
                ),
            ),
          
         // SizedBox(height: height * .02,),

          Container(
               height: height * .7,
             width: double.infinity,
             decoration: const BoxDecoration( 
             image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/3428289/pexels-photo-3428289.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
             fit: BoxFit.fill),
                    ),
          
               child: Column(
                 children:  [ 
          
                   SizedBox(height: height*.2,),
          
                   const Padding(              // Text
                     padding: EdgeInsets.only( left: 30, right: 30),
                     child: Align(alignment: Alignment.center,
                       child: Text("Happy 100th Birthday DisneyLand", 
                       style: TextStyle( fontSize: 38, fontWeight: FontWeight.bold, color:Colors.white),),
                     ),
                   ),
                   
                  const  Padding(              // Text
                     padding: EdgeInsets.only(top: 20, left: 30, right: 40),
                     child: Align(alignment: Alignment.center ,
                       child: Text("Celebrate with a trip-our Park guide'll get you going", 
                       style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                     ),
                   ),
          
                    Padding(       // Pack your Bags Button
                  padding: const EdgeInsets.only(top: 30, left: 30),
                  child: Align(alignment: Alignment.centerLeft,
                    child: CustomButton(
                           text: "Explore Now",
                           onPressed: () {
                              },
                               buttonWidth: 170, 
                               buttonHeight: 50, 
                              ),
                  ),
                ),
                 ],
               ),
             ),


          
         
             SizedBox(height: height*.03,),
      
        const Center(                         // Text
         child: Text("Beyond the Beach", 
         style: TextStyle(
          fontFamily: Medium,
          fontSize: 24,
          color: Colors.black,
          fontWeight: FontWeight.bold,
         ),
         ),
       ),
         
          SizedBox(height: height * .01,),
         
           const Padding(                     // Text
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
           child: Align( alignment: Alignment.center,
             child:  Text("Triopical experiences to travel up your trips", 
             style: TextStyle(
              fontFamily: Medium,
              fontSize: 16, 
              color: Colors.black,
             // fontWeight: FontWeight.bold,
             ),
             ),
           ),
         ),
      ),
          
          Padding(                  // Listview Builder Beyond the Beach
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: SizedBox(  
          height: height *.48 ,
          
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Beyondthebeachitemdata .itemCount,
            itemBuilder: (context, index){
            Beyondthebeachitemmodel model = Beyondthebeachitemdata .getStatusItem(index);
           
            return BeyondTheBeach(
              beyondbeachimage:model.beyondbeachimage, 
              beyondbeachplaceName: model.beyondbeachplaceName,  
              beyondbeachcompanyName: model.beyondbeachcompanyName,
              beyondbeachprice: model.beyondbeachprice,
              ); 
            }
            ),
        ), 
      ),
          
          
       Padding(              // Discover More in Dubai Container
         padding: const EdgeInsets.only(top: 5),
         child: Container( 
          height: height * .28,
          width: width * .85,
         decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10),), 
         image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/2115367/pexels-photo-2115367.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
         fit: BoxFit.cover),
         ),
          
          child: Column( 
            children:  [
             const Padding(
               padding: EdgeInsets.only(top: 15, left: 20, right: 20),
               child: Align(
                  alignment:Alignment.center, 
                child:Text("Is Adventurist Missing a Place?", 
                style: TextStyle(fontFamily: Medium, fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),),),
             ),
       
               Padding(
                 padding: const EdgeInsets.only(top: 20,),
                 child: Align(alignment: Alignment.center,
                   child: CustomButton(                   //  calling a button from buttons.dart
                         
                         icon: const Icon(Icons.place, color: Colors.black,),
                          text: 'Add a missing Place',
                          onPressed: () {
                             },
                              buttonWidth: 250, // Set the desired width for the button
                              buttonHeight: 50, // Set the desired height for the button
                             ),
                 ),
               ),
       
            ],
       
          ),
         ),
       ),
       SizedBox(height: height * .05 ,),  
        ],
        ),
        
      ),
    );
  }
}
