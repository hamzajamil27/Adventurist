import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';

import 'RestaurantCityDetailsScreen.dart';

class RestaurantModels{
  final String imageI;
  final String cityname;
  final String subRestaurantImageLa;
  final String cityRestaurantNameLa;
  final String priceLa;
  final String subRestaurantImagetwoLa;
  final String cityRestaurantNametwoLa;
  final String pricetwoLa;
  final String subRestaurantImagethreeLa;
  final String cityRestaurantNamethreeLa;
  final String pricethreeLa;
  

 RestaurantModels({
    required this.imageI,
    required this.cityname,
   // Lahore
   required this.subRestaurantImageLa,
   required this. cityRestaurantNameLa,
   required this.priceLa,
   required this.subRestaurantImagetwoLa,
   required this.cityRestaurantNametwoLa,
   required this.pricetwoLa,
   required this.subRestaurantImagethreeLa,
   required this.cityRestaurantNamethreeLa,
   required this.pricethreeLa,


    }
    );
}

class RestaurantModelsdata {
  // final List<RestaurantModels> products
 // static var statusList
  final List<RestaurantModels> restaurants = [
    
    RestaurantModels(
      imageI: "https://images.pexels.com/photos/18698228/pexels-photo-18698228/free-photo-of-food-photography.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Lahore',
        subRestaurantImageLa: "https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'KFC', priceLa: "10.00",
        subRestaurantImagetwoLa: "https://images.pexels.com/photos/2232433/pexels-photo-2232433.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNametwoLa: 'KFC',  pricetwoLa: "10.00",
        subRestaurantImagethreeLa: "https://images.pexels.com/photos/1059943/pexels-photo-1059943.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNamethreeLa: 'KFC', pricethreeLa: "10.00"),
    
    RestaurantModels(
      imageI: "https://images.pexels.com/photos/12737656/pexels-photo-12737656.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Karachi',
  subRestaurantImageLa: "https://images.pexels.com/photos/773724/pexels-photo-773724.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'FruitChat', priceLa: "9.00",
  subRestaurantImagetwoLa: "https://images.pexels.com/photos/1546896/pexels-photo-1546896.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNametwoLa: 'FruitChat',  pricetwoLa: "9.00",
  subRestaurantImagethreeLa: "https://images.pexels.com/photos/838846/pexels-photo-838846.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNamethreeLa: 'FruitChat', pricethreeLa: "9.00"),

  RestaurantModels (
      imageI: "https://images.pexels.com/photos/13591746/pexels-photo-13591746.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Multan',
  subRestaurantImageLa: "https://images.pexels.com/photos/1893555/pexels-photo-1893555.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'MacDonalds', priceLa: "190.00",
  subRestaurantImagetwoLa: "https://images.pexels.com/photos/1893555/pexels-photo-1893555.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNametwoLa: 'MacDonalds',  pricetwoLa: "9.00",
  subRestaurantImagethreeLa: "https://images.pexels.com/photos/1893555/pexels-photo-1893555.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNamethreeLa: 'MacDonalds', pricethreeLa: "9.00"),

      
   RestaurantModels (
      imageI: "https://images.pexels.com/photos/2291603/pexels-photo-2291603.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Hyderabad',
  subRestaurantImageLa: "https://images.pexels.com/photos/1651166/pexels-photo-1651166.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'BBQ', priceLa: "Rs.9",
  subRestaurantImagetwoLa: "https://images.pexels.com/photos/1651166/pexels-photo-1651166.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNametwoLa: 'BBQ',  pricetwoLa: "1Rs.9",
  subRestaurantImagethreeLa: "https://images.pexels.com/photos/1651166/pexels-photo-1651166.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNamethreeLa: 'BBQ', pricethreeLa: "Rs.9"),


   RestaurantModels (
      imageI: "https://images.pexels.com/photos/2175211/pexels-photo-2175211.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Islamabad',
  subRestaurantImageLa: "https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'Burger', priceLa: "10.00",
  subRestaurantImagetwoLa: "https://images.pexels.com/photos/1251198/pexels-photo-1251198.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNametwoLa: 'Burger',  pricetwoLa: "10.00",
  subRestaurantImagethreeLa: "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNamethreeLa: 'Burger', pricethreeLa: "10.00"),

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