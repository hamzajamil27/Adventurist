import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';

import 'RestaurantCityDetailsScreen.dart';

class RestaurantModels{
  final String imageI;
  final String cityname;
  

 RestaurantModels({
    required this.imageI,
    required this.cityname,
    }
    );
}

class RestaurantModelsdata {
  // final List<RestaurantModels> products
 // static var statusList
  final List<RestaurantModels> restaurants = [
    
    RestaurantModels(
      imageI: "https://images.pexels.com/photos/18698228/pexels-photo-18698228/free-photo-of-food-photography.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Lahore'  ),
    
    RestaurantModels(
      imageI: "https://images.pexels.com/photos/12737656/pexels-photo-12737656.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Karachi' ),

   RestaurantModels (
      imageI: "https://images.pexels.com/photos/13591746/pexels-photo-13591746.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Multan' ),
      
   RestaurantModels (
      imageI: "https://images.pexels.com/photos/2291603/pexels-photo-2291603.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Hyderabad' ),

   RestaurantModels (
      imageI: "https://images.pexels.com/photos/2175211/pexels-photo-2175211.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Islamabad' ),
    // Add more travel data entries
  ];

  
}

class Restaurantcards extends StatefulWidget {
final RestaurantModels restaurant;
  const Restaurantcards({super.key, 
  
    required this.restaurant,
    }
    );

  @override
  State<Restaurantcards> createState() => _RestaurantcardsState();
}

class _RestaurantcardsState extends State<Restaurantcards> {
  @override
  Widget build(BuildContext context) {
    
    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;

    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: InkWell( onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RestaurantCityDetailsScreen(
                restaurant: widget.restaurant
            ),
          ),
        );
      },
        child: SizedBox( 
          height: height * .30,
          width: width* .6,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect( borderRadius: BorderRadius.circular(10),
                          child: Image(image: NetworkImage(widget.restaurant.imageI),
                          fit: BoxFit.cover,
                           height: height * .30),
                        ),
                        Positioned(bottom: 10,left: 10,
                          child: Align( alignment: Alignment.center,
                            child: Center(
                              child: Text(widget.restaurant.cityname,
                              style: const TextStyle(
                                          fontFamily: Medium,
                                          fontSize: 34, 
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,),
                                          ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
        ),
      ),
    );
  }
}