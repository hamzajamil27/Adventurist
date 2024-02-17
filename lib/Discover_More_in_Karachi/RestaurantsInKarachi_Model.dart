import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';

class RestaurantKarachiModels{
  final String imageI;
  final String restaurantname;


  RestaurantKarachiModels({
    required this.imageI,
    required this.restaurantname,
  }
      );
}

class RestaurantKarachiModelsdata {
  // final List<RestaurantModels> products
  // static var statusList
  final List<RestaurantKarachiModels> karachiRestaurants = [

    RestaurantKarachiModels(
        imageI: "https://images.pexels.com/photos/9738985/pexels-photo-9738985.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", restaurantname: 'Mandi House'  ),

    RestaurantKarachiModels(
        imageI: "https://images.pexels.com/photos/12737817/pexels-photo-12737817.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", restaurantname: 'Student Biryani' ),

    RestaurantKarachiModels (
        imageI: "https://images.pexels.com/photos/2233729/pexels-photo-2233729.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", restaurantname: 'Lal Qila' ),

    RestaurantKarachiModels (
        imageI: "https://images.pexels.com/photos/1639562/pexels-photo-1639562.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", restaurantname: 'Bytes for Life' ),

    RestaurantKarachiModels (
        imageI: "https://images.pexels.com/photos/1653877/pexels-photo-1653877.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", restaurantname: 'Jamil Foods' ),
    // Add more travel data entries
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
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => RestaurantCityDetailsScreen(
        //         restaurant: widget.restaurant
        //     ),
        //   ),
        // );
      },
        child: SizedBox(
            height: height * .30,
            width: width* .6,
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect( borderRadius: BorderRadius.circular(10),
                      child: Image(image: NetworkImage(widget.karachiRestaurant.imageI),
                          fit: BoxFit.cover,
                          height: height * .30),
                    ),
                    Positioned(bottom: 10,left: 10,
                      child: Align( alignment: Alignment.center,
                        child: Center(
                          child: Text(widget.karachiRestaurant.restaurantname,
                            style: const TextStyle(
                              fontFamily: Medium,
                              fontSize: 28,
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
