import 'package:flutter/material.dart';

import '../../constants/buttons.dart';
import 'SummerVacation.dart';

class HotelDetailScreen extends StatefulWidget {
  final SummervacationItemModel summerVacation;
  const HotelDetailScreen({super.key, required this.summerVacation});

  @override
  State<HotelDetailScreen> createState() => _HotelDetailScreenState();
}

class _HotelDetailScreenState extends State<HotelDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;
    return Scaffold(
      appBar: AppBar(
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
                        image: NetworkImage(widget.summerVacation.hotelsImage),
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
                    "${widget.summerVacation.hotelname}",
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
                    "${widget.summerVacation.Decription}",
                    style: TextStyle(fontSize: 16),
                  ),


                  SizedBox(height: 20),
                  Text("Booking.com", style: TextStyle(fontSize: 20,color: Colors.blueAccent),),

                  SizedBox(height: 20),
                  Row(
                    children: [
                        Text("Price Ranges from:  ", style: TextStyle(fontSize: 18),),
                      Text(
                        "${widget.summerVacation.price}",
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
