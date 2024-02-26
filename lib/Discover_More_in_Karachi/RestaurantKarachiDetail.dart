import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constants/buttons.dart';
import '../screens/signin_Screen.dart';
import '../url_Function.dart';
import 'RestaurantsInKarachi_Model.dart';

class RestaurantKarachiDetail extends StatefulWidget {
  final RestaurantKarachiModels  karachiRestaurant;

  const RestaurantKarachiDetail({super.key, required this.karachiRestaurant});

  @override
  State<RestaurantKarachiDetail> createState() => _RestaurantKarachiDetailState();
}

class _RestaurantKarachiDetailState extends State<RestaurantKarachiDetail> {
  final auth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Detail'),
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.karachiRestaurant.subRestaurantImageLa),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.karachiRestaurant.cityRestaurantNameLa,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),

                  Text(
                    "Details about the restaurant",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),
                  Text(
                    widget.karachiRestaurant.description,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: (user == null ) ? Text("For visiting website, Login yourself please") :   CustomButton(                  //  calling a button from buttons.dart
                backgroundColor: Colors.black,
                borderColor: Colors.white,
                textColor: Colors.white,
                // icon: const Icon(Icons.forum, color: Colors.black,),
                text: 'Visit Website',
                onPressed: () {
                  try {
                    launchURL(widget.karachiRestaurant.linkOne); // Example usage
                  } catch (e) {
                    print('Error launching URL: $e');
                  }
                },
                buttonWidth: 100, // Set the desired width for the button
                buttonHeight: 60, // Set the desired height for the button
              ),
            ),
            SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}
