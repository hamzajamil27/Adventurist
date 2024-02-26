import 'package:Adventurist/models/WeekendTripIdeas/weekendtripideas.dart';
import 'package:flutter/material.dart';

import '../../constants/buttons.dart';
import 'Mountain_Single_Hotel.dart';
    
    class MountainHotel extends StatefulWidget {
      final Tripideaweekenditemmodel tripIdea;
      const MountainHotel({super.key, required this.tripIdea});

      @override
      State<MountainHotel> createState() => _MountainHotelState();
    }
    class _MountainHotelState extends State<MountainHotel> {
      bool isExpanded = false;
      @override
      Widget build(BuildContext context) {
        final height = MediaQuery.of(context).size.height* 1;
        final width = MediaQuery.of(context).size.width* 1;
        return Scaffold(
          appBar: AppBar(
            title: Text("Hotels in ${widget.tripIdea.cityname}"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image at the top
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(widget.tripIdea.hotelsImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Name of the hotel
                      Text(
                        "${widget.tripIdea.hotelname}",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      // Description
                      Text(
                        "${widget.tripIdea.Decription.substring(0, widget.tripIdea.Decription.length ~/ 4)}...",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: CustomButton(                  //  calling a button from buttons.dart
                          backgroundColor: Colors.black,
                          borderColor: Colors.white,
                          textColor: Colors.white,
                          // icon: const Icon(Icons.forum, color: Colors.black,),
                          text: 'Book Now',
                          onPressed: () {
                            Navigator.push( context, MaterialPageRoute(builder: (context) =>   MountainSingleHotel(tripIdea: widget.tripIdea)),
                            );
                          },
                          buttonWidth: 155, // Set the desired width for the button
                          buttonHeight: 60, // Set the desired height for the button
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20,),

                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image at the top
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(widget.tripIdea.hotelImagetwo),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Name of the hotel
                      Text(
                        "${widget.tripIdea.hotelnametwo}",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      // Description
                      Text(
                        "${widget.tripIdea.Decriptiontwo.substring(0, widget.tripIdea.Decriptiontwo.length ~/ 4)}...",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      // Read More Button
                      Center(
                        child: CustomButton(                  //  calling a button from buttons.dart
                          backgroundColor: Colors.black,
                          borderColor: Colors.white,
                          textColor: Colors.white,
                          // icon: const Icon(Icons.forum, color: Colors.black,),
                          text: 'Book Now',
                          onPressed: () {
                            Navigator.push( context, MaterialPageRoute(builder: (context) =>   MountainSingleHotelTwo(tripIdea: widget.tripIdea)),
                            );
                          },
                          buttonWidth: 155, // Set the desired width for the button
                          buttonHeight: 60, // Set the desired height for the button
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20,),

                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image at the top
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(widget.tripIdea.hotelImagethree),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Name of the hotel
                      Text(
                        "${widget.tripIdea.hotelnamethree}",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      // Description
                      Text(
                        "${widget.tripIdea.Decriptionthree.substring(0, widget.tripIdea.Decriptionthree.length ~/ 4)}...",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      // Read More Button
                      Center(
                        child: CustomButton(                  //  calling a button from buttons.dart
                          backgroundColor: Colors.black,
                          borderColor: Colors.white,
                          textColor: Colors.white,
                          // icon: const Icon(Icons.forum, color: Colors.black,),
                          text: 'Book Now',
                          onPressed: () {
                            Navigator.push( context, MaterialPageRoute(builder: (context) =>   MountainSingleHotelThree(tripIdea: widget.tripIdea)),
                            );
                          },
                          buttonWidth: 155, // Set the desired width for the button
                          buttonHeight: 60, // Set the desired height for the button
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }
    