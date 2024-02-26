
import 'package:flutter/material.dart';

import '../../constants/colors/fontcolors.dart';
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
  final String linkOne;
  final String linkTwo;
  final String linkThree;


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
    required this.linkOne,
    required this.linkTwo,
    required this.linkThree,

  }
      );
}

/////////////////

class Tripideaweekenditemmodeldata {
  //static var statusList = [
  final List<Tripideaweekenditemmodel> tripIdeas = [

    Tripideaweekenditemmodel(
        imageI: "https://images.unsplash.com/photo-1578562501518-fc75b2484885?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", cityname: 'Murree', price: '\$200 - 300',
        hotelsImage: "https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_960_720.jpg", hotelname: "The Roomy Lodge, Murree", Decription : "The Roomy Lodge, Murree in Murree features 4-star accommodation with a garden, a terrace and a restaurant. Among the facilities at this property are room service and a 24-hour front desk, along with free WiFi throughout the property.\n\nAll units at the hotel are equipped with a seating area, a flat-screen TV with cable channels and a private bathroom with free toiletries and a shower. Rooms are fitted with a kettle, while selected rooms include a balcony and others also provide guests with mountain views. At The Roomy Lodge, Murree every room comes with bed linen and towels.\n\nA buffet, à la carte or Full English/Irish breakfast is available daily at the property.\n\nThe nearest airport is Islamabad International Airport, 87 km from the accommodation.",
        hotelImagetwo: "https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelnametwo:"VivaPines Hotel, Murree", Decriptiontwo : "Located in Murree, Punjab Region region, VivaPines, Murree is set 50 km from Lake View Park. There is a private entrance at the apartment for the convenience of those who stay. The apartment provides rooms with air conditioning, free private parking and free WiFi.\n\nThe apartment provides guests with a terrace, mountain views, a seating area, satellite flat-screen TV, a fully equipped kitchen with a microwave and a toaster, and a private bathroom with a bath or shower and slippers. The units are equipped with a balcony featuring an outdoor dining area. At the apartment complex, all units include bed linen and towels.\n\nA baby safety gate is also available at the apartment, while guests can also relax in the garden.\n\nThe nearest airport is Islamabad International Airport, 84 km from VivaPines, Murree.",
        hotelImagethree:"https://images.pexels.com/photos/775219/pexels-photo-775219.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelnamethree: "Ortus - Murree Hills", Decriptionthree: "Set in Murree, Ortus - Murree Hills provides accommodation with seating area. Featuring a 24-hour front desk, this property also provides guests with a picnic area. The apartment offers rooms with air conditioning, free private parking and free WiFi.\n\nAll units come with a terrace with mountain views, a fully equipped kitchen with a microwave and a fridge, and a private bathroom with shower. A balcony with an outdoor dining area and quiet street views is offered in all units. At the apartment complex, the units have bed linen and towels.\n\nIn the warmer months, you can make use of the barbecue facilities and dine on the private patio.\n\nGuests at the apartment will be able to enjoy activities in and around Murree, like hiking.\n\nThe nearest airport is Islamabad International Airport, 85 km from Ortus - Murree Hills.",
        linkOne: "https://www.booking.com/hotel/pk/the-roomy-lodge.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dest_id=7355664;dest_type=hotel;dist=0;group_adults=2;group_children=0;hapos=1;hpos=1;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;srepoch=1708817478;srpvid=cec8a55ebc6d0268;type=total;ucfs=1&#hotelTmpl",
      linkTwo: "https://www.booking.com/hotel/pk/vivapines.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dest_id=9208679;dest_type=hotel;dist=0;group_adults=2;group_children=0;hapos=1;hpos=1;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;srepoch=1708817567;srpvid=44fba58b8f740107;type=total;ucfs=1&#hotelTmpl",
      linkThree: "https://www.booking.com/hotel/pk/ortus-murree-apartments.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dest_id=7160320;dest_type=hotel;dist=0;group_adults=2;group_children=0;hapos=1;hpos=1;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;srepoch=1708817608;srpvid=4ad4a59fcec00208;type=total;ucfs=1&#hotelTmpl",
    ),

    Tripideaweekenditemmodel(
        imageI: "https://images.unsplash.com/photo-1659293155300-f4cc8b866e80?q=80&w=1633&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", cityname: 'Hunza', price: '\$200 - 300',
        hotelsImage: "https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_960_720.jpg", hotelname: "PC Legacy Hunza", Decription : "PC Legacy Hunza features accommodation in Hunza. With free WiFi, this 5-star hotel offers room service and a 24-hour front desk. There is a restaurant serving American cuisine, and free private parking is available.\n\nAt the hotel rooms include air conditioning, a desk, a terrace with a mountain view, a private bathroom, a TV, bed linen and towels. The rooms have a wardrobe.\n\nA buffet, à la carte or continental breakfast is available each morning at the property.\n\nThe nearest airport is Gilgit Airport, 73 km from PC Legacy Hunza.",
        hotelImagetwo: "https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelnametwo:"Famree Resort Hunza", Decriptiontwo: "Facing the beachfront, Famree Resort Hunza offers 5-star accommodation in Hunza and features a garden, terrace and restaurant. Among the facilities at this property are room service and a 24-hour front desk, along with free WiFi throughout the property. Guests can have a drink at the bar.\n\nThe units at the hotel come with air conditioning, a seating area, a flat-screen TV with satellite channels, a safety deposit box and a private bathroom with a shower, free toiletries and a hairdryer. At Famree Resort Hunza all rooms are fitted with bed linen and towels.\n\nA continental, Full English/Irish or Asian breakfast is available every morning at the property.\n\nBike hire and car hire are available at this hotel and the area is popular for hiking.\n\nThe nearest airport is Gilgit Airport, 119 km from the accommodation.",
        hotelImagethree:"https://images.pexels.com/photos/775219/pexels-photo-775219.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelnamethree: "Hikal Guest House", Decriptionthree: "Located in Hunza, Hikal Guest House features a garden, shared lounge, terrace, and free WiFi. There is free private parking and the property provides paid airport shuttle service.\n\nAt the hotel, the rooms come with a desk. With a private bathroom equipped with a shower and free toiletries, rooms at Hikal Guest House also offer a city view. At the accommodation each room is fitted with bed linen and towels.\n\nAn à la carte, continental or Asian breakfast can be enjoyed at the property. At Hikal Guest House you will find a restaurant serving Chinese, Indian and Japanese cuisine. Vegetarian, dairy-free and halal options can also be requested.\n\nThe area is popular for cycling, and bike hire and car hire are available at the hotel.\n\nSpeaking English, Urdu and Chinese at the reception, staff are willing to help at any time of the day.\n\nThe nearest airport is Gilgit Airport, 57 km from Hikal Guest House.",
      linkOne: "https://www.booking.com/hotel/pk/pc-legacy-nasirabad-hunza.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dest_id=10386123;dest_type=hotel;dist=0;group_adults=2;group_children=0;hapos=1;hpos=1;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;srepoch=1708817647;srpvid=2cf0a5b38c1b01bc;type=total;ucfs=1&#hotelTmpl",
      linkTwo: "https://www.booking.com/hotel/pk/famree-resort-hunza.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dest_id=7733371;dest_type=hotel;dist=0;group_adults=2;group_children=0;hapos=1;hpos=1;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;srepoch=1708817682;srpvid=e588a5c5b00500f4;type=total;ucfs=1&#hotelTmpl",
      linkThree: "https://www.booking.com/hotel/pk/hikal-guest-house.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dest_id=3808390;dest_type=hotel;dist=0;group_adults=2;group_children=0;hapos=1;hpos=1;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;srepoch=1708817734;srpvid=8783a5de287e011d;type=total;ucfs=1&#hotelTmpl",
    ),

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

              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(widget.tripIdea.cityname,
                    style: const TextStyle(fontFamily: Medium, fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),),
                ),
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