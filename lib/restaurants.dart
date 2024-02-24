import 'package:flutter/material.dart';

import 'RestaurantsCard/restaurants.dart';

class RestaurantsScreen extends StatefulWidget {
  const RestaurantsScreen({super.key});

  @override
  State<RestaurantsScreen> createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants"),
        elevation: 30,
      ),

      body: Column(
        children: [
          Padding(
            // Looking for Food
            padding: const EdgeInsets.only(top: 30),
            child:  SingleChildScrollView(
              child: SizedBox(
                height: height * 0.78,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: RestaurantModelsdata().restaurants.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Restaurantcards(
                        restaurant: RestaurantModelsdata().restaurants[index]);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
