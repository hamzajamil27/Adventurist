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

),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right:20),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox( height: height * 0.04,),
              Text('Top Restaurants', style: TextStyle(fontSize: 24),),
              SizedBox(height: height * 0.015,),

               Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: InkWell( onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RestaurantDetail(
                            restaurant: widget.restaurant
                        ),
                      ),
                    );
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
                                  image: NetworkImage(widget.restaurant.subRestaurantImageLa, ),
                                  fit: BoxFit.fill, )
                              //Image.network(widget.cityrestaurant.imageI, fit: BoxFit.cover,),
                            ),
                            SizedBox(width: 10,),

                            Column( crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: height*0.01,),
                                Text(widget.restaurant.cityRestaurantNameLa, style: TextStyle(fontWeight: FontWeight.bold), softWrap: true,),
                                SizedBox(height: height*0.015,),
                                Text("Click for description"),
                              ],
                            ),
                          ],
                        )
                    ),
                  ),
                ),


                //////////////
              // 2nd Restaurant
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: InkWell( onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RestaurantDetailTwo(
                            restaurant: widget.restaurant
                        ),
                      ),
                    );
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
                                  image: NetworkImage(widget.restaurant.subRestaurantImagetwoLa, ),
                                  fit: BoxFit.fill, )
                              //Image.network(widget.cityrestaurant.imageI, fit: BoxFit.cover,),
                            ),
                            SizedBox(width: 10,),

                            Column( crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: height*0.01,),
                                Text(widget.restaurant.cityRestaurantNametwoLa, style: TextStyle(fontWeight: FontWeight.bold), softWrap: true,
                    ),
                    SizedBox(height: height*0.015,),
                    Text("Click for description"),
                              ],
                            ),
                          ],
                        )
                    ),
                  ),
                ),


              //////////////
              // 3rd Restaurant

                  Padding(
                  padding: const EdgeInsets.only(top: 20),
          child: InkWell( onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RestaurantDetailThree(
                    restaurant: widget.restaurant
                ),
              ),
            );
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
                          image: NetworkImage(widget.restaurant.subRestaurantImagethreeLa, ),
                          fit: BoxFit.fill, )
                      //Image.network(widget.cityrestaurant.imageI, fit: BoxFit.cover,),
                    ),
                    SizedBox(width: 10,),

                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height*0.01,),
                        Text(widget.restaurant.cityRestaurantNamethreeLa, style: TextStyle(fontWeight: FontWeight.bold), softWrap: true,
                         ),
                        SizedBox(height: height*0.015,),
                        Text("Click for description"),
                      ],
                    ),
                  ],
                )
            ),
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
              SizedBox(height: height *0.04,),
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