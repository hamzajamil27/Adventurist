import 'package:adventurist/Tour%20Pages/tourpagelist.dart';
import 'package:flutter/material.dart';

import 'HotelsInKarachi_Model.dart';
import 'RestaurantsInKarachi_Model.dart';



class DiscoverMoreinKarachiScreen extends StatefulWidget {
  const DiscoverMoreinKarachiScreen({super.key});

  @override
  State<DiscoverMoreinKarachiScreen> createState() => _DiscoverMoreinKarachiScreenState();
}

class _DiscoverMoreinKarachiScreenState extends State<DiscoverMoreinKarachiScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;


    return Scaffold(
      appBar: AppBar(
        title: Text("Discover More in Karachi"),
        elevation: 30,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(height: height *0.03,),

              Text("Karachi: Dynamic Fusion of Culture, Commerce, and Cuisine", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
              SizedBox(height: height* .02,),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text("Karachi, Pakistan's dynamic port city, is a vibrant hub of culture, commerce, and cuisine. Its diverse streets reflect a blend of "
                    "traditions and languages, while iconic landmarks and modern skyscrapers define its skyline. Bustling markets and food streets offer a rich "
                    "culinary experience, complementing Karachi's role as the nation's economic center. Amidst the urban hustle, serene beaches provide tranquil "
                    "escapes by the Arabian Sea. Karachi's compact yet diverse landscape encapsulates the essence of modern Pakistan." ,
                  style: TextStyle(fontSize: 16),),
              ),

              SizedBox(height: height* .03,),

              Image(image: NetworkImage("https://images.unsplash.com/photo-1582468415647-4d65b3799dc6?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),

              SizedBox(height: height* .07,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row( mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Hotels in Karachi", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: height *.44,                 // ListView.Builder for Summer

                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: KarachiHotelsModeldata().karachiHotels.length,
                    itemBuilder: (BuildContext context, int index){
                      //SummervacationItemModel model = SummerVacationItemModeldata.getStatusItem(index);
                      return KarachiHotelsCard(
                          karachiHotel : KarachiHotelsModeldata().karachiHotels[index]

                        // imagePath: model.imagePath,  // placeName: model.placeName,  // companyName: model.companyName,  // price: model.price,
                      );
                    }
                ),
              ),

              SizedBox(height: height* 0.08),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row( mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Restaurants in Karachi", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),

              SizedBox(height: height* 0.03),
              SizedBox(
                height: height *.33,

                child:
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: RestaurantKarachiModelsdata().karachiRestaurants.length,
                  itemBuilder: (BuildContext context, int index) {
                    return KarachiRestaurantsCard(
                        karachiRestaurant : RestaurantKarachiModelsdata().karachiRestaurants[index]

                    );
                  },
                ),
              ),
              SizedBox(height: height *0.2,),



            ],
          ),
        ),
      ),
    );
  }
}
