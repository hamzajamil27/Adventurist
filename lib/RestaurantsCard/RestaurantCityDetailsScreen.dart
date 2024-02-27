import 'package:Adventurist/RestaurantsCard/restaurants.dart';
import 'package:flutter/material.dart';

import '../constants/buttons.dart';
import 'RestaurantsSingleCityModel.dart';


class RestaurantCityDetailsScreen extends StatefulWidget {
  // final String cityName;
  // final String imageUrl;
  final RestaurantModels restaurant;
  const RestaurantCityDetailsScreen({   Key? key, //required this.cityName, required this.imageUrl,
  required this.restaurant
    // required this.cityName,
    // required this.imageUrl,
  }) : super(key: key);

  @override
  State<RestaurantCityDetailsScreen> createState() => _RestaurantCityDetailsScreenState();
}

class _RestaurantCityDetailsScreenState extends State<RestaurantCityDetailsScreen> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Restaurants in ${widget.restaurant.cityname}")),
        elevation: 30,

),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right:20),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox( height: height * 0.04,),
              Center(child: Text('Top Restaurants', style: TextStyle(fontSize: 30, ),)),
              SizedBox(height: height * 0.02,),
              Center(child: Text("Find the best restaurant in ${widget.restaurant.cityname} and enjoy your meal")),
              SizedBox(height: height * 0.07,),

              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.restaurant.subRestaurantImageLa),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Name of the hotel
              Text(
                "${widget.restaurant.cityRestaurantNameLa}",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Description
              Text(
                "${widget.restaurant.description.substring(0, widget.restaurant.description.length ~/ 5)}...",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Center(
                child: CustomButton(                  //  calling a button from buttons.dart
                  backgroundColor: Colors.black,
                  borderColor: Colors.white,
                  textColor: Colors.white,
                  // icon: const Icon(Icons.forum, color: Colors.black,),
                  text: 'View more',
                  onPressed: () {
                    Navigator.push( context, MaterialPageRoute(builder: (context) =>   RestaurantDetail(restaurant: widget.restaurant)),
                    );
                  },
                  buttonWidth: 155, // Set the desired width for the button
                  buttonHeight: 60, // Set the desired height for the button
                ),
              ),
                SizedBox(height: height * 0.09,),

                //////////////
              // 2nd Restaurant
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.restaurant.subRestaurantImagetwoLa),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Name of the hotel
              Text(
                "${widget.restaurant.cityRestaurantNametwoLa}",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Description
              Text(
                "${widget.restaurant.descriptiontwo.substring(0, widget.restaurant.descriptiontwo.length ~/ 7)}...",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Center(
                child: CustomButton(                  //  calling a button from buttons.dart
                  backgroundColor: Colors.black,
                  borderColor: Colors.white,
                  textColor: Colors.white,
                  // icon: const Icon(Icons.forum, color: Colors.black,),
                  text: 'View more',
                  onPressed: () {
                    Navigator.push( context, MaterialPageRoute(builder: (context) =>   RestaurantDetailTwo(restaurant: widget.restaurant)),
                    );
                  },
                  buttonWidth: 155, // Set the desired width for the button
                  buttonHeight: 60, // Set the desired height for the button
                ),
              ),


              //////////////
              // 3rd Restaurant

              SizedBox(height: height * 0.09,),

              //////////////
              // 2nd Restaurant
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.restaurant.subRestaurantImagethreeLa),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Name of the hotel
              Text(
                "${widget.restaurant.cityRestaurantNamethreeLa}",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Description
              Text(
                "${widget.restaurant.descriptionthree.substring(0, widget.restaurant.descriptionthree.length ~/ 7)}...",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Center(
                child: CustomButton(                  //  calling a button from buttons.dart
                  backgroundColor: Colors.black,
                  borderColor: Colors.white,
                  textColor: Colors.white,
                  // icon: const Icon(Icons.forum, color: Colors.black,),
                  text: 'View more',
                  onPressed: () {
                    Navigator.push( context, MaterialPageRoute(builder: (context) =>   RestaurantDetailThree(restaurant: widget.restaurant)),
                    );
                  },
                  buttonWidth: 155, // Set the desired width for the button
                  buttonHeight: 60, // Set the desired height for the button
                ),
              ),
              //   ListView.builder(
              //     scrollDirection: Axis.vertical,
              //     itemCount: CityRestaurantModelsdata().cityrestaurants.length,
              //     itemBuilder: (BuildContext context, int index) {
              //       return CityRestaurantcards(
              //           cityrestaurant : CityRestaurantModelsdata().cityrestaurants[index]
              //
              //       );
              //     },
              //   ),
              // ),
              SizedBox(height: height *.1,),
              // Center(
              //   child: CustomButton(      //  calling a button from buttons.dart
              //     borderColor: Colors.black,
              //     backgroundColor: Colors.black,
              //     text: 'View all restaurants',
              //     textColor: Colors.white,
              //     loading: loading,
              //     onPressed: () {
              //
              //     },
              //     buttonWidth: width*.7, // Set the desired width for the button
              //     buttonHeight: 60, // Set the desired height for the button
              //   ),
              // ),


            ],
          ),
        ),
      )


    );
  }
}


/////