import 'package:adventurist/models/WeekendTripIdeas/weekendtripideas.dart';
import 'package:flutter/material.dart';

import '../../constants/buttons.dart';

class MountainSingleHotel extends StatefulWidget {
  final Tripideaweekenditemmodel tripIdea;
  const MountainSingleHotel({super.key, required this.tripIdea});

  @override
  State<MountainSingleHotel> createState() => _MountainSingleHotelState();
}

class _MountainSingleHotelState extends State<MountainSingleHotel> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hotel Detail")),
        elevation: 30,
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
                    height: height * 0.38,
                    width: width * 0.98,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.tripIdea.hotelsImage),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  Container( height: 28, width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 2.0// Border color
                      ),
                      borderRadius: BorderRadius.circular(5), // Border radius
                    ),
                    child: Center(child: Text("Top Rated", style: TextStyle(fontSize: 16),)),
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
                  SizedBox(height: 20),

                  Text(
                    "About the Hotel:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  // Description
                  Text(
                    "${widget.tripIdea.Decription}",
                    style: TextStyle(fontSize: 16),
                  ),


                  SizedBox(height: 20),
                  Text("Booking.com", style: TextStyle(fontSize: 20,color: Colors.blueAccent),),

                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text("Price Ranges from:  ", style: TextStyle(fontSize: 18),),
                      Text(
                        "${widget.tripIdea.price}",
                        style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                      ),
                    ],
                  ),

                  SizedBox(height: 30),
                  Center(
                    child: CustomButton(                  //  calling a button from buttons.dart
                      backgroundColor: Colors.black,
                      borderColor: Colors.white,
                      textColor: Colors.white,
                      // icon: const Icon(Icons.forum, color: Colors.black,),
                      text: 'Book Now',
                      onPressed: () {
                        // Navigator.push( context, MaterialPageRoute(builder: (context) =>   HotelDetailScreen(summerVacation: widget.summerVacation)),
                        // );
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


/////////////////////////////////////////



class MountainSingleHotelTwo extends StatefulWidget {
  final Tripideaweekenditemmodel tripIdea;
  const MountainSingleHotelTwo({super.key, required this.tripIdea});

  @override
  State<MountainSingleHotelTwo> createState() => _MountainSingleHotelTwoState();
}

class _MountainSingleHotelTwoState extends State<MountainSingleHotelTwo> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hotel Detail")),
        elevation: 30,
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
                    height: height * 0.38,
                    width: width * 0.98,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.tripIdea.hotelImagetwo),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  Container( height: 28, width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 2.0// Border color
                      ),
                      borderRadius: BorderRadius.circular(5), // Border radius
                    ),
                    child: Center(child: Text("Top Rated", style: TextStyle(fontSize: 16),)),
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
                  SizedBox(height: 20),

                  Text(
                    "About the Hotel:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  // Description
                  Text(
                    "${widget.tripIdea.Decriptiontwo}",
                    style: TextStyle(fontSize: 16),
                  ),


                  SizedBox(height: 20),
                  Text("Booking.com", style: TextStyle(fontSize: 20,color: Colors.blueAccent),),

                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text("Price Ranges from:  ", style: TextStyle(fontSize: 18),),
                      Text(
                        "${widget.tripIdea.price}",
                        style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                      ),
                    ],
                  ),

                  SizedBox(height: 30),
                  Center(
                    child: CustomButton(                  //  calling a button from buttons.dart
                      backgroundColor: Colors.black,
                      borderColor: Colors.white,
                      textColor: Colors.white,
                      // icon: const Icon(Icons.forum, color: Colors.black,),
                      text: 'Book Now',
                      onPressed: () {
                        // Navigator.push( context, MaterialPageRoute(builder: (context) =>   HotelDetailScreen(summerVacation: widget.summerVacation)),
                        // );
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


///////////////////////////////////////////////////////////////



class MountainSingleHotelThree extends StatefulWidget {
  final Tripideaweekenditemmodel tripIdea;
  const MountainSingleHotelThree({super.key, required this.tripIdea});

  @override
  State<MountainSingleHotelThree> createState() => _MountainSingleHotelThreeState();
}

class _MountainSingleHotelThreeState extends State<MountainSingleHotelThree> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hotel Detail")),
        elevation: 30,
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
                    height: height * 0.38,
                    width: width * 0.98,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.tripIdea.hotelImagethree),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  Container( height: 28, width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 2.0// Border color
                      ),
                      borderRadius: BorderRadius.circular(5), // Border radius
                    ),
                    child: Center(child: Text("Top Rated", style: TextStyle(fontSize: 16),)),
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
                  SizedBox(height: 20),

                  Text(
                    "About the Hotel:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  // Description
                  Text(
                    "${widget.tripIdea.Decriptionthree}",
                    style: TextStyle(fontSize: 16),
                  ),


                  SizedBox(height: 20),
                  Text("Booking.com", style: TextStyle(fontSize: 20,color: Colors.blueAccent),),

                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text("Price Ranges from:  ", style: TextStyle(fontSize: 18),),
                      Text(
                        "${widget.tripIdea.price}",
                        style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                      ),
                    ],
                  ),

                  SizedBox(height: 30),
                  Center(
                    child: CustomButton(                  //  calling a button from buttons.dart
                      backgroundColor: Colors.black,
                      borderColor: Colors.white,
                      textColor: Colors.white,
                      // icon: const Icon(Icons.forum, color: Colors.black,),
                      text: 'Book Now',
                      onPressed: () {
                        // Navigator.push( context, MaterialPageRoute(builder: (context) =>   HotelDetailScreen(summerVacation: widget.summerVacation)),
                        // );
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
