import 'package:flutter/material.dart';
import 'package:adventurist/models/summer_vacations/SummerVacation.dart';

import '../../constants/buttons.dart';
import 'Hotel_detail.dart';

class CityHotelsScreen extends StatefulWidget {
  final SummervacationItemModel summerVacation;
  const CityHotelsScreen({Key? key, required this.summerVacation}) : super(key: key);

  @override
  State<CityHotelsScreen> createState() => _CityHotelsScreenState();
}

class _CityHotelsScreenState extends State<CityHotelsScreen> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Hotels in ${widget.summerVacation.placeName}"),
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
                        image: NetworkImage(widget.summerVacation.hotelsImage),
                        fit: BoxFit.cover,
                      ),
                    ),
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
                  SizedBox(height: 10),
                  // Description
                  Text(
                    "${widget.summerVacation.Decription.substring(0, widget.summerVacation.Decription.length ~/ 4)}...",
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
                        Navigator.push( context, MaterialPageRoute(builder: (context) =>   HotelDetailScreen(summerVacation: widget.summerVacation)),
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
                        image: NetworkImage(widget.summerVacation.hotelImagetwo),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Name of the hotel
                  Text(
                    "${widget.summerVacation.hotelnametwo}",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Description
                  Text(
                     "${widget.summerVacation.Decriptiontwo.substring(0, widget.summerVacation.Decriptiontwo.length ~/ 4)}...",
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
                        Navigator.push( context, MaterialPageRoute(builder: (context) =>   HotelDetailScreenTwo(summerVacation: widget.summerVacation)),
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
                        image: NetworkImage(widget.summerVacation.hotelImagethree),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Name of the hotel
                  Text(
                    "${widget.summerVacation.hotelnamethree}",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Description
                  Text(
                   "${widget.summerVacation.Decriptionthree.substring(0, widget.summerVacation.Decriptionthree.length ~/ 4)}...",
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
                        Navigator.push( context, MaterialPageRoute(builder: (context) =>   HotelDetailScreenThree(summerVacation: widget.summerVacation)),
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
