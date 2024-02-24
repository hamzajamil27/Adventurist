import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';

import 'MountainHoteldetails.dart';

class Tripideaweekenditemmodel{
  final String imageI;
  final String cityname;
  final String hotelsImage;
  final String Decription;
  final String hotelname;
  final String hotelImagetwo;
  final String Decriptiontwo;
  final String hotelnametwo;
  final String hotelImagethree;
  final String Decriptionthree;
  final String hotelnamethree;
  final String price;


  Tripideaweekenditemmodel({
    required this.imageI,
    required this.cityname,
    required this.hotelsImage,
    required this.Decription,
  required this. hotelname,
    required this.hotelImagetwo,
    required this.Decriptiontwo,
    required this. hotelnametwo,
    required this.hotelImagethree,
    required this.Decriptionthree,
    required this. hotelnamethree,
    required this.price,

  }
      );
}

/////////////////

class Tripideaweekenditemmodeldata {
  //static var statusList = [
  final List<Tripideaweekenditemmodel> tripIdeas = [

    Tripideaweekenditemmodel(
        imageI: "https://images.unsplash.com/photo-1578562501518-fc75b2484885?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", cityname: 'Murree', price: '\$200 - 300',
        hotelsImage: "https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_960_720.jpg", hotelname: "The Roomy Lodge", Decription : "Discover the charm of The Roomy Lodge, an inviting retreat nestled amid the scenic wonders of Murree City. Surrounded by breathtaking mountains, our hotel offers a variety of well-appointed rooms and suites designed for utmost comfort. Delight your palate with delectable cuisine at our onsite restaurant and unwind with a refreshing swim in our inviting pool. Conveniently located, our lodge provides easy access to the natural beauty and attractions of Murree City. Experience genuine hospitality and tranquility at The Roomy Lodge, where every moment promises a memorable stay.",
        hotelImagetwo: "https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelnametwo:"VivaPines", Decriptiontwo : "Welcome to VivaPines, where modern elegance meets natural serenity in the heart of Murree City. Our hotel is a haven of comfort, offering a range of stylishly appointed rooms and suites designed to cater to your every need. Indulge in culinary delights at our onsite restaurant, where our talented chefs craft mouthwatering dishes using locally sourced ingredients. Unwind and rejuvenate in our tranquil surroundings, whether by taking a dip in our refreshing pool or pampering yourself with a spa treatment. With its prime location, VivaPines provides the perfect base for exploring the beauty and charm of Murree City. Experience unparalleled hospitality and relaxation at VivaPines, where every stay is a memorable journey.",
        hotelImagethree:"https://images.pexels.com/photos/775219/pexels-photo-775219.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelnamethree: "Ortus - Murree Hills", Decriptionthree: "Welcome to Ortus - Murree Hills, a sanctuary of luxury nestled amidst the enchanting landscapes of Murree City. Our hotel offers a fusion of contemporary elegance and natural beauty, providing guests with an unforgettable retreat experience. Step into our meticulously designed rooms and suites, each offering modern amenities and breathtaking views of the surrounding hills. Indulge in a culinary adventure at our gourmet restaurant, where our talented chefs blend local flavors with international cuisine. Unwind and rejuvenate in our spa facilities, or simply relax by the fireplace in our cozy lounge. With its idyllic location in the heart of Murree Hills, Ortus invites you to discover the magic of the mountains in unparalleled comfort and style"),

    Tripideaweekenditemmodel(
        imageI: "https://images.unsplash.com/photo-1659293155300-f4cc8b866e80?q=80&w=1633&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", cityname: 'Khunjerab park', price: '\$200 - 300',
        hotelsImage: "https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_960_720.jpg", hotelname: "PC Legacy Hunza", Decription : "Discover PC Legacy Hunza nestled in the scenic beauty of the Hunza Valley. Our hotel blends modern luxury with traditional charm, offering cozy rooms and luxurious suites. Indulge in Hunza cuisine at our onsite restaurants and embark on guided treks through the majestic mountains. Unwind at our wellness center or heated indoor pool after a day of exploration. Experience the tranquility and adventure of Hunza at PC Legacy.",
        hotelImagetwo: "https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelnametwo:"Famree Resort Hunza", Decriptiontwo: "Welcome to Famree Resort Hunza, where luxury meets the natural splendor of the Hunza Valley. Nestled amidst towering peaks and lush greenery, our resort offers a serene retreat for families and adventurers alike. Relax in our comfortable accommodations, savor delicious local and international cuisine, and embark on unforgettable adventures in this enchanting region. Whether you're seeking relaxation or adventure, Famree Resort Hunza promises an unforgettable experience in one of Pakistan's most breathtaking destinations",
        hotelImagethree:"https://images.pexels.com/photos/775219/pexels-photo-775219.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelnamethree: "Hikal Guest House", Decriptionthree: "Introducing Hikal Guest House, your cozy retreat in the heart of Hunza. Nestled amidst the majestic mountains and verdant valleys, our guest house offers a warm and inviting atmosphere for travelers seeking comfort and tranquility. Experience genuine hospitality in our well-appointed rooms, where modern amenities meet traditional charm. Let our friendly staff assist you in exploring the wonders of Hunza, from ancient forts to scenic hiking trails. Whether you're here for adventure or relaxation, Hikal Guest House promises a memorable stay in this breathtaking region."),

    // Add more travel data entries
  ];
}

/////////////////////

class WeekEndTripIdeasCard extends StatefulWidget {
final Tripideaweekenditemmodel tripIdea;
  // final String imageI;
  // final String cityname;
  const WeekEndTripIdeasCard({super.key,
  required this.tripIdea
    // required this.imageI,
    // required this.cityname,
    }
    );

  @override
  State<WeekEndTripIdeasCard> createState() => _WeekEndTripIdeasCardState();
}

class _WeekEndTripIdeasCardState extends State<WeekEndTripIdeasCard> {
  @override
  Widget build(BuildContext context) {
    
    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MountainHotel(
                  tripIdea: widget.tripIdea
              ),
            ),
          );
        },
        child: SizedBox(
          height: height * .5,
          width: width * .6,

          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Stack(
                children: [
                  ClipRRect( borderRadius: BorderRadius.circular(10),
                    child: Image(image: NetworkImage(widget.tripIdea.imageI),
                      fit: BoxFit.fill,
                      height: height * .3,),

                  ),

                  // Align(
                  //   alignment: Alignment.topRight,
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(right: 10),
                  //     child: GestureDetector(
                  //       onTap: () {
                  //         // Toggle the pressed state
                  //         setState(() {
                  //           isPressed = !isPressed;
                  //         });
                  //       },
                  //       child: Container(
                  //         height: height * 0.08,
                  //         width: width * 0.08,
                  //         decoration: BoxDecoration(
                  //           shape: BoxShape.circle,
                  //           color: isPressed ? Colors.red : Color.fromARGB(255, 223, 222, 222),
                  //         ),
                  //         child: Icon(
                  //           Icons.favorite_border,
                  //           color: isPressed ? Colors.white : Colors.black,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(widget.tripIdea.cityname,
                  style: const TextStyle(fontFamily: Medium, fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),),
              ),

              // Padding(
              //   padding: const EdgeInsets.only(top: 2),
              //   child: Text(widget.summerVacation.companyName,
              //   style: const TextStyle(fontFamily: Medium, fontSize: 14, color: blackColor),),
              // ),

              // Padding(
              //   padding: const EdgeInsets.only(top: 5),
              //   child: Text(widget.summerVacation.price,
              //   style: const TextStyle(fontFamily: Medium, fontSize: 18,fontWeight: FontWeight.bold, color: blackColor),
              //                 ),
              //
              // ) ,

            ],
          ), ),

      ),
    );

    // return Padding(
    //   padding: const EdgeInsets.only(left: 20),
    //   child: InkWell( onTap: (){},
    //     child: SizedBox(
    //       height: height * .30,
    //       width: width* .6,
    //             child: Column(
    //               children: [
    //                 Stack(
    //                   children: [
    //                     ClipRRect( borderRadius: BorderRadius.circular(10),
    //                       child: Image(image: NetworkImage(widget.tripIdea.imageI),
    //                       fit: BoxFit.cover,
    //                        height: height * .30),
    //                     ),
    //                     Positioned(bottom: 10,left: 10,
    //                       child: Align( alignment: Alignment.center,
    //                         child: Center(
    //                           child: Text(widget.tripIdea.cityname,
    //                           style: const TextStyle(
    //                                       fontFamily: Medium,
    //                                       fontSize: 28,
    //                                       color: Colors.white,
    //                                       fontWeight: FontWeight.bold,),
    //                                       ),
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 )
    //               ],
    //             )
    //     ),
    //   ),
    // );
  }
}