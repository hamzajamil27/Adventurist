import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants/buttons.dart';
import '../../screens/signin_Screen.dart';
import '../../url_Function.dart';
import 'SummerVacation.dart';

class HotelDetailScreen extends StatefulWidget {
  final SummervacationItemModel summerVacation;
  const HotelDetailScreen({super.key, required this.summerVacation});

  @override
  State<HotelDetailScreen> createState() => _HotelDetailScreenState();
}

class _HotelDetailScreenState extends State<HotelDetailScreen> {

  final auth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hotel Detail")),
        actions: [ (user == null) ? TextButton( onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
              const SignInScreen(),
            ),
          );
        },  child: Text("Login"),)
            :
        Text(""),
        ] ,
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
                    child: (user == null ) ? Text("For Booking, Login yourself please") : CustomButton(                  //  calling a button from buttons.dart
                      backgroundColor: Colors.black,
                      borderColor: Colors.white,
                      textColor: Colors.white,
                      // icon: const Icon(Icons.forum, color: Colors.black,),
                      text: 'Book Now',
                      onPressed: () {

                          try {
                            launchURL(widget.summerVacation.linkOne); // Example usage
                          } catch (e) {
                            print('Error launching URL: $e');
                          }
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


///////////////////////////////////////////////////////////////////



class HotelDetailScreenTwo extends StatefulWidget {
  final SummervacationItemModel summerVacation;
  const HotelDetailScreenTwo({super.key, required this.summerVacation});

  @override
  State<HotelDetailScreenTwo> createState() => _HotelDetailScreenTwoState();
}

class _HotelDetailScreenTwoState extends State<HotelDetailScreenTwo> {
  final auth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hotel Detail")),
        actions : [(user == null) ? TextButton( onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
              const SignInScreen(),
            ),
          );
        },  child: Text("Login"),)
            :
        Text(""),
        ],
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
                        image: NetworkImage(widget.summerVacation.hotelImagetwo),
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
                    "${widget.summerVacation.hotelnametwo}",
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
                    "${widget.summerVacation.Decriptiontwo}",
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
                    child: (user == null ) ? Text("For Booking, Login yourself please") : CustomButton(                  //  calling a button from buttons.dart
                      backgroundColor: Colors.black,
                      borderColor: Colors.white,
                      textColor: Colors.white,
                      // icon: const Icon(Icons.forum, color: Colors.black,),
                      text: 'Book Now',
                      onPressed: () {
                        try {
                          launchURL(widget.summerVacation.linkTwo); // Example usage
                        } catch (e) {
                          print('Error launching URL: $e');
                        }
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





///////////////////////////////////////////////////////////////////



class HotelDetailScreenThree extends StatefulWidget {
  final SummervacationItemModel summerVacation;
  const HotelDetailScreenThree({super.key, required this.summerVacation});

  @override
  State<HotelDetailScreenThree> createState() => _HotelDetailScreenThreeState();
}

class _HotelDetailScreenThreeState extends State<HotelDetailScreenThree> {
  final auth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hotel Detail")),
        actions:  [ (user == null) ? TextButton( onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
              const SignInScreen(),
            ),
          );
        },  child: Text("Login"),)
            :
        Text(""),
        ],
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
                        image: NetworkImage(widget.summerVacation.hotelImagethree),
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
                    "${widget.summerVacation.hotelnamethree}",
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
                    "${widget.summerVacation.Decriptionthree}",
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
                    child: (user == null ) ? Text("For Booking, Login yourself please") :  CustomButton(                  //  calling a button from buttons.dart
                      backgroundColor: Colors.black,
                      borderColor: Colors.white,
                      textColor: Colors.white,
                      // icon: const Icon(Icons.forum, color: Colors.black,),
                      text: 'Book Now',
                      onPressed: () {
                        try {
                          launchURL(widget.summerVacation.linkThree); // Example usage
                        } catch (e) {
                          print('Error launching URL: $e');
                        }
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
