import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';

import 'RestaurantKarachiDetail.dart';

class RestaurantKarachiModels{
  final String subRestaurantImageLa;
  final String cityRestaurantNameLa;
  final String priceLa;
  final String description;
  final String linkOne;


  RestaurantKarachiModels({
    required this.subRestaurantImageLa,
    required this.cityRestaurantNameLa,
    required this.priceLa,
    required this.description,
    required this.linkOne,
  }
      );
}

class RestaurantKarachiModelsdata {
  // final List<RestaurantModels> products
  // static var statusList
  final List<RestaurantKarachiModels> karachiRestaurants = [

    RestaurantKarachiModels(
        subRestaurantImageLa: "https://images.pexels.com/photos/773724/pexels-photo-773724.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'Lal-Qila', priceLa: "9.00", description : "PRICE RANGE:\n\n  \$8 - \$15\n\nCUISINES:\n\n  Barbecue, Asian, Pakistani, Pizza\n\nSPECIAL DIETS:\n\n  Vegetarian Friendly, Vegan Options, Halal",
      linkOne: "https://lalqila.com/karachi/dinner-menu/",),


    RestaurantKarachiModels (
      subRestaurantImageLa: "https://images.pexels.com/photos/1546896/pexels-photo-1546896.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'BBQ Tonight',  priceLa: "9.00", description : "CUISINES:\n\n  Barbecue, Asian, Pakistani\n\nSPECIAL DIETS:\n\n  Vegetarian Friendly, Halal, Gluten Free Options\n\nMEALS:\n\n  Lunch, Dinner, Brunch, Late Night",
  linkOne: "https://bbqtonight.com/menuanddeals/",),

    RestaurantKarachiModels (
      subRestaurantImageLa: "https://images.pexels.com/photos/838846/pexels-photo-838846.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityRestaurantNameLa: 'Kolachi Restaurant', priceLa: "9.00", description : "CUISINES:\n\n  Seafood, Barbecue, Asian, Healthy, Middle Eastern, Pakistani, Afghan\n\nSPECIAL DIETS:\n\n  Vegetarian Friendly, Vegan Options, Halal, Kosher, Gluten Free Options\n\nMEALS:\n\n  Dinner, Late Night",
  linkOne:"https://www.kolachirestaurant.com/", ),// Add more travel data entries
  ];


}

class KarachiRestaurantsCard extends StatefulWidget {
  final RestaurantKarachiModels  karachiRestaurant;
  const KarachiRestaurantsCard({super.key, required this.karachiRestaurant});

  @override
  State<KarachiRestaurantsCard> createState() => _KarachiRestaurantsCardState();
}

class _KarachiRestaurantsCardState extends State<KarachiRestaurantsCard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;

    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: InkWell( onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RestaurantKarachiDetail(
                karachiRestaurant: widget.karachiRestaurant
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
                      child: Image(image: NetworkImage(widget.karachiRestaurant.subRestaurantImageLa),
                          fit: BoxFit.cover,
                          height: height * .30),
                    ),
                    Positioned(bottom: 10,left: 10,
                      child: Align( alignment: Alignment.center,
                        child: Center(
                          child: Text(widget.karachiRestaurant.cityRestaurantNameLa,
                            style: const TextStyle(
                              fontFamily: Medium,
                              fontSize: 22,
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
