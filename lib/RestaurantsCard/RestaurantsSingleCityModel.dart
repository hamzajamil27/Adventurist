import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';

import 'RestaurantCityDetailsScreen.dart';

class CityRestaurantModels{
  final String imageI;
  final String restaurantName;
  final double price;


  CityRestaurantModels({
    required this.imageI,
    required this.restaurantName,
    required this.price,
  }
      );
}

class CityRestaurantModelsdata {
  // final List<CityRestaurantModels> products
  // static var statusList
  final List<CityRestaurantModels> cityrestaurants/*restaurants*/ = [

    CityRestaurantModels(
        imageI: "https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", restaurantName: "Molana Fruit Chat" , price: 19.99 ),

    CityRestaurantModels(
        imageI: "https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", restaurantName: "Faizi Hakeem Biryani" , price: 7.69),

    CityRestaurantModels(
        imageI: "https://images.pexels.com/photos/64208/pexels-photo-64208.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", restaurantName: "Rehmam Doodh Patti",  price: 9.99 ),

    CityRestaurantModels(
        imageI: "https://images.pexels.com/photos/3434523/pexels-photo-3434523.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", restaurantName: "Hafiz Hamza k Cholay " , price: 8.69),

    CityRestaurantModels(
        imageI: "https://images.pexels.com/photos/812860/pexels-photo-812860.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", restaurantName: "KFC",  price: 11.09 ),

    // Add more travel data entries
  ];


}

class CityRestaurantcards extends StatefulWidget {
  final CityRestaurantModels cityrestaurant;
  const CityRestaurantcards({super.key,

    required this.cityrestaurant,
  }
      );

  @override
  State<CityRestaurantcards> createState() => _CityRestaurantcardsState();
}

class _CityRestaurantcardsState extends State<CityRestaurantcards> {
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: InkWell( onTap: (){
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => RestaurantCityDetailsScreen(
        //         cityrestaurant: widget.cityrestaurant
        //     ),
        //   ),
        // );
      },
        child: Container(
            height: height * .17,
            width: width* .9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12
            ),

            child: Row(
              children: [
                Container(
                    height: height *.17,
                    width: width* .38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image(
                    image: NetworkImage(widget.cityrestaurant.imageI, ),
                    fit: BoxFit.fill, )
                  //Image.network(widget.cityrestaurant.imageI, fit: BoxFit.cover,),
                ),
                SizedBox(width: 10,),

                Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height*0.01,),
                    Text(widget.cityrestaurant.restaurantName),
                    SizedBox(height: height*0.015,),
                    Text("\$${widget.cityrestaurant.price.toStringAsFixed(2)}"),
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}