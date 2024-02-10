import 'package:adventurist/RestaurantsCard/restaurants.dart';
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

),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right:20),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox( height: height * 0.04,),
              Text('Top Restaurants', style: TextStyle(fontSize: 24),),
              SizedBox(height: height * 0.015,),

              SizedBox(
                height: height *.6,

                child:
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: CityRestaurantModelsdata().cityrestaurants.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CityRestaurantcards(
                        cityrestaurant : CityRestaurantModelsdata().cityrestaurants[index]

                    );
                  },
                ),
              ),
              SizedBox(height: height *0.04,),
              Center(
                child: CustomButton(      //  calling a button from buttons.dart
                  borderColor: Colors.black,
                  backgroundColor: Colors.black,
                  text: 'View all restaurants',
                  textColor: Colors.white,
                  loading: loading,
                  onPressed: () {

                  },
                  buttonWidth: width*.7, // Set the desired width for the button
                  buttonHeight: 60, // Set the desired height for the button
                ),
              ),


            ],
          ),
        ),
      )


    );
  }
}


/////