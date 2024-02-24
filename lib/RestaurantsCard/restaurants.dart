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
  final String description;
  final String descriptiontwo;
  final String descriptionthree;

  

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
   required this.description,
   required this.descriptiontwo,
   required this.descriptionthree,


    }
    );
}

class RestaurantModelsdata {
  // final List<RestaurantModels> products
 // static var statusList
  final List<RestaurantModels> restaurants = [
    
    RestaurantModels(
      imageI: "https://images.pexels.com/photos/18698228/pexels-photo-18698228/free-photo-of-food-photography.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Lahore',
        subRestaurantImageLa: "https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'KFC', priceLa: "10.00", description : "",
        subRestaurantImagetwoLa: "https://images.pexels.com/photos/2232433/pexels-photo-2232433.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNametwoLa: 'KFC',  pricetwoLa: "10.00", descriptiontwo : "",
        subRestaurantImagethreeLa: "https://images.pexels.com/photos/1059943/pexels-photo-1059943.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNamethreeLa: 'KFC', pricethreeLa: "10.00", descriptionthree : ""),
    
    RestaurantModels(
      imageI: "https://images.pexels.com/photos/12737656/pexels-photo-12737656.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Karachi',
  subRestaurantImageLa: "https://images.pexels.com/photos/773724/pexels-photo-773724.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'Lal-Qila', priceLa: "9.00", description : "A restaurant depicting the legendary grandeur of splendid and noble past. A vivid and conspicuous realization of the glory of our brilliant esthetical essence. All the way a combination and innovation. Adorned with courtesy of mughlai era we offer you to dine out authentic Mughlai , Tandori , Live Bar-B-Que & Traditional Pakistani cuisine",
  subRestaurantImagetwoLa: "https://images.pexels.com/photos/1546896/pexels-photo-1546896.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNametwoLa: 'Kabab-Ji',  pricetwoLa: "9.00", descriptiontwo : "",
  subRestaurantImagethreeLa: "https://images.pexels.com/photos/838846/pexels-photo-838846.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNamethreeLa: 'Kolachi Restaurant', pricethreeLa: "9.00", descriptionthree : "", ),

  RestaurantModels (
      imageI: "https://images.pexels.com/photos/13591746/pexels-photo-13591746.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Multan',
  subRestaurantImageLa: "https://images.pexels.com/photos/1893555/pexels-photo-1893555.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'MacDonalds', priceLa: "190.00", description : "",
      subRestaurantImagetwoLa: "https://images.pexels.com/photos/1893555/pexels-photo-1893555.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNametwoLa: 'MacDonalds',  pricetwoLa: "9.00", descriptiontwo : "",
  subRestaurantImagethreeLa: "https://images.pexels.com/photos/1893555/pexels-photo-1893555.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNamethreeLa: 'MacDonalds', pricethreeLa: "9.00", descriptionthree : "", ),

      
   RestaurantModels (
      imageI: "https://images.pexels.com/photos/2291603/pexels-photo-2291603.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Hyderabad',
  subRestaurantImageLa: "https://images.pexels.com/photos/1651166/pexels-photo-1651166.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'BBQ', priceLa: "Rs.9", description : "",
  subRestaurantImagetwoLa: "https://images.pexels.com/photos/1651166/pexels-photo-1651166.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNametwoLa: 'BBQ',  pricetwoLa: "1Rs.9", descriptiontwo : "",
  subRestaurantImagethreeLa: "https://images.pexels.com/photos/1651166/pexels-photo-1651166.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNamethreeLa: 'BBQ', pricethreeLa: "Rs.9", descriptionthree : "",),


   RestaurantModels (
      imageI: "https://images.pexels.com/photos/2175211/pexels-photo-2175211.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Islamabad',
  subRestaurantImageLa: "https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'Burger', priceLa: "10.00", description : "",
  subRestaurantImagetwoLa: "https://images.pexels.com/photos/1251198/pexels-photo-1251198.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNametwoLa: 'Burger',  pricetwoLa: "10.00", descriptiontwo : "",
  subRestaurantImagethreeLa: "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNamethreeLa: 'Burger', pricethreeLa: "10.00", descriptionthree : "",),

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

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 0, bottom: 20),
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
                        ),


                      ],
                    )
            ),
          ),

        ),
      ],
    );
  }
}