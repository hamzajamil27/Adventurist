
import 'package:flutter/material.dart';

import '../constants/colors/fontcolors.dart';
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
  final String linkOne;
  final String linkTwo;
  final String linkThree;

  

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
   required this.linkOne,
   required this.linkTwo,
   required this.linkThree,


    }
    );
}

class RestaurantModelsdata {
  // final List<RestaurantModels> products
 // static var statusList
  final List<RestaurantModels> restaurants = [
    
    RestaurantModels(
      imageI: "https://images.pexels.com/photos/18698228/pexels-photo-18698228/free-photo-of-food-photography.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Lahore',
        subRestaurantImageLa: "https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'Monal Lahore', priceLa: "10.00", description : "CUISINES:\n\n  Barbecue, Asian, Pakistani\n\nSPECIAL DIETS:\n\n  Vegetarian Friendly, Vegan Options, Halal, Gluten Free Options\n\nMEALS:\n\n  Lunch, Dinner, Brunch",
        subRestaurantImagetwoLa: "https://images.pexels.com/photos/2232433/pexels-photo-2232433.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNametwoLa: 'Andaaz Restaurant',  pricetwoLa: "10.00", descriptiontwo : "CUISINES:\n\n  Pakistani\n\nSPECIAL DIETS:\n\n  Vegetarian Friendly, Vegan Options, Halal, Gluten Free Options\n\nMEALS:\n\n  Dinner, Late Night, Drinks",
        subRestaurantImagethreeLa: "https://images.pexels.com/photos/1059943/pexels-photo-1059943.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNamethreeLa: 'Haveli Restaurant', pricethreeLa: "10.00", descriptionthree : "PRICE RANGE:\n\n  \$3 - \$10\n\nCUISINES:\n\n  Barbecue, Pakistani\n\nSPECIAL DIETS:\n\n  Vegetarian Friendly, Vegan Options, Halal, Gluten Free Options",
    linkOne: "https://themonal.com/menus-lahore/",
      linkTwo: "https://andaazrestaurant.com/menu/",
      linkThree: "https://havelikebabandgril.com.pk/#3577",
    ),
    
    RestaurantModels(
      imageI: "https://images.pexels.com/photos/12737656/pexels-photo-12737656.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Karachi',
  subRestaurantImageLa: "https://images.pexels.com/photos/773724/pexels-photo-773724.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'Lal-Qila', priceLa: "9.00", description : "PRICE RANGE:\n\n  \$8 - \$15\n\nCUISINES:\n\n  Barbecue, Asian, Pakistani, Pizza\n\nSPECIAL DIETS:\n\n  Vegetarian Friendly, Vegan Options, Halal",
  subRestaurantImagetwoLa: "https://images.pexels.com/photos/1546896/pexels-photo-1546896.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNametwoLa: 'BBQ Tonight',  pricetwoLa: "9.00", descriptiontwo : "CUISINES:\n\n  Barbecue, Asian, Pakistani\n\nSPECIAL DIETS:\n\n  Vegetarian Friendly, Halal, Gluten Free Options\n\nMEALS:\n\n  Lunch, Dinner, Brunch, Late Night",
  subRestaurantImagethreeLa: "https://images.pexels.com/photos/838846/pexels-photo-838846.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNamethreeLa: 'Kolachi Restaurant', pricethreeLa: "9.00", descriptionthree : "CUISINES:\n\n  Seafood, Barbecue, Asian, Healthy, Middle Eastern, Pakistani, Afghan\n\nSPECIAL DIETS:\n\n  Vegetarian Friendly, Vegan Options, Halal, Kosher, Gluten Free Options\n\nMEALS:\n\n  Dinner, Late Night",
      linkOne: "https://lalqila.com/karachi/dinner-menu/",
      linkTwo: "https://bbqtonight.com/menuanddeals/",
      linkThree: "https://www.kolachirestaurant.com/",
    ),

  RestaurantModels (
      imageI: "https://images.pexels.com/photos/13591746/pexels-photo-13591746.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Multan',
  subRestaurantImageLa: "https://images.pexels.com/photos/1893555/pexels-photo-1893555.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'Bundu Khan', priceLa: "190.00", description : "CUISINES:\n\n  Pakistani, Asian, Middle Eastern\n\nSPECIAL DIETS:\n\n  Halal, Vegetarian Friendly\n\nMEALS:\n\n  Dinner, Lunch",
      subRestaurantImagetwoLa: "https://images.pexels.com/photos/1893555/pexels-photo-1893555.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNametwoLa: 'Shahjahan Grill',  pricetwoLa: "9.00", descriptiontwo : "CUISINES:\n\n  Pakistani, Barbecue, Asian, Middle Eastern\n\nSPECIAL DIETS:\n\n  Vegan Options, Vegetarian Friendly, Halal\n\nMEALS:\n\n  Dinner, Lunch",
  subRestaurantImagethreeLa: "https://images.pexels.com/photos/1893555/pexels-photo-1893555.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNamethreeLa: 'Ramada Multan', pricethreeLa: "9.00", descriptionthree : "CUISINES:\n\n  Asian, Pakistani\n\nSPECIAL DIETS:\n\n  Vegan Options, Vegetarian Friendly, Halal\n\nMEALS:\n\n  Breakfast, Lunch, Dinner, Brunch, Drinks",
    linkOne: "https://bundukhan.pk/",
    linkTwo: "https://www.facebook.com/ShahjahanGrillOfficial/",
    linkThree: "https://ramadamultan.com/dining/",
  ),

      
   RestaurantModels (
      imageI: "https://images.pexels.com/photos/2291603/pexels-photo-2291603.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Hyderabad',
  subRestaurantImageLa: "https://images.pexels.com/photos/1651166/pexels-photo-1651166.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'Bidri', priceLa: "Rs.9", description : "PRICE RANGE:\n\n  \$17 - \$22\n\nCUISINES:\n\n  Indian, Healthy\n\nSPECIAL DIETS:\n\n  Vegetarian Friendly, Vegan Options, Halal, Gluten Free Options",
  subRestaurantImagetwoLa: "https://images.pexels.com/photos/1651166/pexels-photo-1651166.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNametwoLa: 'Yi Jing',  pricetwoLa: "1Rs.9", descriptiontwo : "CUISINES:\n\n  Chinese, Asian\n\nSPECIAL DIETS:\n\n  Vegetarian Friendly, Vegan Options, Gluten Free Options\n\nMEALS:\n\n  Lunch, Dinner",
  subRestaurantImagethreeLa: "https://images.pexels.com/photos/1651166/pexels-photo-1651166.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNamethreeLa: "Dum Pukht Begum's", pricethreeLa: "Rs.9", descriptionthree : "PRICE RANGE:\n\n  \$24 - \$36\n\nCUISINES:\n\n  Indian\n\nSPECIAL DIETS:\n\n  Vegetarian Friendly, Vegan Options, Halal, Gluten Free Options",
     linkOne: "https://www.marriott.com/en-us/hotels/hydmc-hyderabad-marriott-hotel-and-convention-centre/dining/",
     linkTwo: "https://www.itchotels.com/in/en/restaurant-listing?hotel=itckohenur-hyderabad",
     linkThree: "https://www.itchotels.com/in/en/restaurant-listing?hotel=itckohenur-hyderabad",
   ),


   RestaurantModels (
      imageI: "https://images.pexels.com/photos/2175211/pexels-photo-2175211.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Islamabad',
  subRestaurantImageLa: "https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'Dawat', priceLa: "10.00", description : "CUISINES:\n\n  Pakistani, Indian\n\nSPECIAL DIETS:\n\n  Vegetarian Friendly, Halal\n\nMEALS:\n\n  Dinner, Lunch",
  subRestaurantImagetwoLa: "https://images.pexels.com/photos/1251198/pexels-photo-1251198.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNametwoLa: 'Wild Rice Restaurant',  pricetwoLa: "10.00", descriptiontwo : "CUISINES:\n\n  Asian, Thai\n\nSPECIAL DIETS:\n\n  Vegetarian Friendly, Vegan Options, Halal\n\nMEALS:\n\n  Lunch, Dinner",
  subRestaurantImagethreeLa: "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNamethreeLa: 'Zamana Restaurant', pricethreeLa: "10.00", descriptionthree : "CUISINES:\n\n  Pakistani, International\n\nSPECIAL DIETS:\n\n  Halal, Vegetarian Friendly, Vegan Options, Gluten Free Options\n\nMEALS:\n\n  Breakfast, Lunch, Dinner, Brunch",
     linkOne: "https://www.serenahotels.com/islamabad/dining/dawat",
     linkTwo: "https://www.serenahotels.com/islamabad/dining/wild-rice",
     linkThree: "https://www.serenahotels.com/islamabad/dining/zamana",),

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