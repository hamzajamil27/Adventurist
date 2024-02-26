// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../constants/colors/fontcolors.dart';
import 'City_Hotels.dart';

class SummervacationItemModel{
  final String imagePath;
  final String placeName;
  final String companyName;
  final String price;
  final String hotelsImage;
  final String hotelImagetwo;
  final String hotelImagethree;
  final String hotelname;
  final String hotelnametwo;
  final String hotelnamethree;
  final String Decription;
  final String Decriptiontwo;
  final String Decriptionthree;
  final String linkOne;
  final String linkTwo;
  final String linkThree;

  SummervacationItemModel({
    required this.imagePath,
    required this.placeName,
    required this.companyName,
    required this.price,
    /////
  required this.hotelsImage,
  required this.hotelImagetwo,
  required this.hotelImagethree,
  required this.hotelname,
  required this.hotelnametwo,
  required this.hotelnamethree,
  required this.Decription,
  required this.Decriptiontwo,
  required this.Decriptionthree,
    required this.linkOne,
    required this.linkTwo,
    required this.linkThree,
  }
      );
}
/////////////

class SummerVacationItemModeldata {

  final List<SummervacationItemModel> summerVacations= [

    SummervacationItemModel(
      imagePath: "https://images.unsplash.com/photo-1598461814968-639d9321f483?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", placeName: 'Multan', companyName: 'Daewoo', price: '\$200 - 300',
      hotelsImage: "https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_960_720.jpg", hotelname: "Avari Xpress Boutique Residence, Multan", Decription : "Set in Multan, Avari Xpress Multan offers 4-star accommodation with a restaurant. The accommodation offers a 24-hour front desk, airport transfers, room service and free WiFi throughout the property.\n\nAll guest rooms come with air conditioning, a flat-screen TV with cable channels, a fridge, a kettle, a shower, free toiletries and a wardrobe. At the hotel all rooms have bed linen and towels.\n\nThe nearest airport is Multan International Airport, 2 km from Avari Xpress Multan.",
    hotelImagetwo: "https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelnametwo:"Hotel One Lalazar Multan", Decriptiontwo : "Just 5 km from Multan International Airport, Fortalice Multan offers affordable yet well-designed rooms with free Wi-Fi. A fitness centre, business centre and free parking are available. Daily newspapers are available at the 24-hour front desk.\n\nThe air-conditioned rooms are all equipped with a flat-screen TV, coffee maker and minibar. En suite bathrooms come with a shower and free toiletries.\n\nFortalice Multan is 7 km from the Clock Tower and 10 km from the local shrines. It is 110 km from Bahawalpur City.\n\nGuests can enjoy a game of table tennis, or rent a car to explore the area. Laundry and currency exchange services are also available.",
        hotelImagethree:"https://images.pexels.com/photos/775219/pexels-photo-775219.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelnamethree: "Faletti's Grand Multan", Decriptionthree: "Faletti's Grand Hotel Multan features an outdoor swimming pool, fitness centre, a terrace and restaurant in Multan. This 4-star hotel offers room service, an ATM and free WiFi. The accommodation provides a concierge service, free shuttle service and currency exchange for guests.\n\nThe hotel will provide guests with air-conditioned rooms with a desk, a kettle, a minibar, a safety deposit box, a flat-screen TV, a balcony and a private bathroom with a shower. At Faletti's Grand Hotel Multan each room includes bed linen and towels.\n\nBreakfast is available daily, and includes buffet, continental and Full English/Irish options.\n\nFree private parking and a business centre are available, as well as a 24-hour front desk.\n\nThe nearest airport is Multan International Airport, 3 km from the accommodation.",

      linkOne: "https://www.booking.com/hotel/pk/avari-xpress-boutique-residence.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dist=0;group_adults=2;group_children=0;hapos=3;hpos=3;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=distance_from_search;srepoch=1708815137;srpvid=78f3a04ff496024b;type=total;ucfs=1&#hotelTmpl",
      linkTwo: "https://www.booking.com/hotel/pk/fortalice-multan.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dist=0;group_adults=2;group_children=0;hapos=10;hpos=10;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=distance_from_search;srepoch=1708815064;srpvid=78f3a04ff496024b;type=total;ucfs=1&#hotelTmpl",
      linkThree: "https://www.booking.com/hotel/pk/faletti-39-s-grand-multan.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dist=0;group_adults=2;group_children=0;hapos=25;hpos=25;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=distance_from_search;srepoch=1708814921;srpvid=78f3a04ff496024b;type=total;ucfs=1&#hotelTmpl",),

    SummervacationItemModel(
      imagePath: "https://images.unsplash.com/photo-1603491656337-3b491147917c?q=80&w=1476&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", placeName: 'Lahore', companyName: 'Faisal Mover', price: '\$1499 - 600',
  hotelsImage: "https://images.pexels.com/photos/1743229/pexels-photo-1743229.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelname: "Pearl Continental Lahore", Decription : "Located within Shahrah-e-Quaid-e-Azam (The Mall), Pearl Continental Hotel Lahore offers 5-star accommodation with free Wi-Fi and floor-to-ceiling windows. An outdoor pool and a fitness centre are available. A free transfer is provided to and from Lahore International Airport.\n\nThe well-decorated rooms come with air conditioning, a flat-screen TV and a minibar. Some rooms include a personal safe. Bathrooms are equipped with a shower and hairdryer.\n\nPearl Continental Hotel, Lahore is 6 km from Lahore Railway Station and 16 km from Allama Iqbal International Airport. On-site parking is free.\n\nJapanese fare is available at the Sakura Restaurant, while Mongolian cuisine is offered at the Dumpukht Restaurant. Other dining options include Continental food at Marco Polo Restaurant, Taipan Chinese Restaurant, Bukhara BBQ Restaurant and Covo Italian Restaurant. There is also Nadia Tea Lounge and a Cafe Latte.\n\nGuests can relax at the sauna and steam bath, or arrange day trips and car rentals at the tour desk. The hotel also provides a business centre and a 24-hour front desk.",
  hotelImagetwo: "https://images.pexels.com/photos/271619/pexels-photo-271619.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelnametwo:"Royal Swiss Lahore", Decriptiontwo : "Set in Lahore, 22 km from Wagah Border, Royal Swiss Lahore offers accommodation with a fitness centre, free private parking and a restaurant. This 5-star hotel has air-conditioned rooms with a private bathroom. The accommodation features a 24-hour front desk, airport transfers, room service and free WiFi throughout the property.\n\nThe units will provide guests with a desk and a coffee machine.\n\nThe hotel offers a buffet or continental breakfast.\n\nArmy Museum Lahore is 6.5 km from Royal Swiss Lahore, while Ayub Stadium is 6.7 km away. \n\nThe nearest airport is Allama Iqbal International Airport, 1 km from the accommodation.",
  hotelImagethree:"https://images.pexels.com/photos/97083/pexels-photo-97083.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelnamethree: "Avari Hotel Lahore", Decriptionthree: "Offering the facilities and benefits of an outdoor swimming pool and spa and wellness centre, Avari Lahore Hotel is located just 8 km from the Allama Iqbal Airport. Free WiFi access is available.\n\nEach room here will provide you with a flat-screen cable TV, minibar and tea/coffee maker.\n\nAt Avari Lahore Hotel you will find a fitness centre. Other facilities offered at the property include grocery deliveries, meeting facilities and a ticket service. The property offers free parking.\n\nThe hotel is 23.6 km from the historic Wagah Border.\n\nThe guests can enjoy their meals at the in-house restaurant and refreshing alcoholic and non-alcoholic beverages at the bar. Packed lunches can be requested. Room service is available.",

      linkOne: "https://www.booking.com/hotel/pk/pearl-continental-lahore.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dest_id=415285;dest_type=hotel;dist=0;group_adults=2;group_children=0;hapos=1;hpos=1;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;srepoch=1708815192;srpvid=fb89a0e874ae0091;type=total;ucfs=1&#hotelTmpl",
      linkTwo: "https://www.booking.com/hotel/pk/royal-swiss-lahore-airport.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dest_id=5492973;dest_type=hotel;dist=0;group_adults=2;group_children=0;hapos=1;hpos=1;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;srepoch=1708815240;srpvid=89eba0fe9c700262;type=total;ucfs=1&#hotelTmpl",
      linkThree: "https://www.booking.com/hotel/pk/avari-lahore.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dest_id=1257083;dest_type=hotel;dist=0;group_adults=2;group_children=0;hapos=1;hpos=1;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;srepoch=1708815278;srpvid=71b2a11309b0001c;type=total;ucfs=1&#hotelTmpl",),

    SummervacationItemModel (
      imagePath: "https://images.unsplash.com/photo-1617373743747-3bb331fd4e8d?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", placeName: 'Karachi', companyName: 'Night Travelers', price: '\$560 - 499',
  hotelsImage: "https://images.pexels.com/photos/276671/pexels-photo-276671.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelname: "Pearl Continental Hotel, Karachi", Decription : "Located in the commercial centre of south central Karachi, The 5-star Pearl Continental Hotel offers luxurious and modern rooms with free Wi-Fi. 6 dining options and an indoor pool await guests.\n\nAir-conditioned and fully carpeted, each room features a flat-screen satellite TV, minibar and iron. Private bathroom includes a hair dryer and shower. A seating area, safe and coffee machine is standard in all rooms.\n\nGuests who drive enjoy valet and free private parking. Conveniences include a car rental, concierge and tour desk.\n\nKarachi’s city centre, Saddar is 2 km from the hotel. Jinnah International Airport is approximately 16 km or a 30-minute drive away.\n\nA variety of dining options are available at Pearl Continental Hotel, Karachi. These include European dishes at Marco Polo Restaurant and Japanese meals at Sakura Restaurant. Chandni Restaurant offers Pakistani cuisine. There are also restaurants serving Chinese and American food.",
  hotelImagetwo: "https://images.pexels.com/photos/172872/pexels-photo-172872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelnametwo:"Hotel Excelsior Hotel, Karachi", Decriptiontwo : "Hotel Excelsior Karachi is situated in Karachi, in the Saddar Town district. With free WiFi, this 4-star hotel offers room service and a 24-hour front desk. There is a restaurant serving Chinese cuisine, and free private parking is available.\n\nThe hotel will provide guests with air-conditioned rooms offering a desk, a kettle, a fridge, a minibar, a safety deposit box, a flat-screen TV and a private bathroom with a shower. At Hotel Excelsior Karachi rooms include bed linen and towels.\n\nThe nearest airport is Jinnah International, 17 km from the accommodation, and the property offers a paid airport shuttle service.",
  hotelImagethree:"https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel-1749602_1280.jpg", hotelnamethree: "Avari Hotel Karchi", Decriptionthree: "Avari Tower features an outdoor pool, spa and fitness centre. Offering modern air conditioned rooms, the property provides free WiFi in all areas. It is 15 km from Jinnah Airport.\n\nRooms come with a flat-screen cable/satellite TV, safety deposit box and minibar. Shower facilities are included in private bathrooms.\n\nStaff at the 24-hour front desk can assist guests with currency exchange and laundry service. The hotel has a tennis court and business centre.\n\nGuests can enjoy a variety of cuisines at the hotel’s dining outlets.",

      linkOne: "https://www.booking.com/hotel/pk/pearl-continental-karachi.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dest_id=415288;dest_type=hotel;dist=0;group_adults=2;group_children=0;hapos=1;hpos=1;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;srepoch=1708815326;srpvid=341ca12a184a00af;type=total;ucfs=1&#hotelTmpl",
      linkTwo: "https://www.booking.com/hotel/pk/excelsior-karachi.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dist=0;group_adults=2;group_children=0;hapos=1;hpos=1;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=distance_from_search;srepoch=1708815423;srpvid=ee3ca159f3d100e8;type=total;ucfs=1&#hotelTmpl",
      linkThree: "https://www.booking.com/hotel/pk/avari-tower-karachi.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dist=0;group_adults=2;group_children=0;hapos=4;hpos=4;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=distance_from_search;srepoch=1708815473;srpvid=e87ba173c38401dd;type=total;ucfs=1&#hotelTmpl",
  ),
    // Add more travel data entries
  ];

}

////////////////

class SummervacationCards extends StatefulWidget {
  // final String imagePath; // final String placeName;  // final String companyName; // final String price;
 final SummervacationItemModel summerVacation;

  const SummervacationCards({super.key,

  required this.summerVacation
    // required this.imagePath, // required this.placeName,    // required this.companyName, // required this.price,
  });

  @override
  State<SummervacationCards> createState() => _SummervacationCardsState();
}

class _SummervacationCardsState extends State<SummervacationCards> {
  bool isPressed = false;
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
              builder: (context) => CityHotelsScreen(
              summerVacation: widget.summerVacation
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
                    child: Image(image: NetworkImage(widget.summerVacation.imagePath),
                    fit: BoxFit.fill,
                    height: height * .3,),

                  ),

        //           Align(
        // alignment: Alignment.topRight,
        // child: Padding(
        //   padding: const EdgeInsets.only(right: 10),
        //   child: GestureDetector(
        //     onTap: () {
        //       // Toggle the pressed state
        //       setState(() {
        //         isPressed = !isPressed;
        //       });
        //     },
        //     child: Container(
        //       height: height * 0.08,
        //       width: width * 0.08,
        //       decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //         color: isPressed ? Colors.red : Color.fromARGB(255, 223, 222, 222),
        //       ),
        //       child: Icon(
        //         Icons.favorite_border,
        //         color: isPressed ? Colors.white : Colors.black,
        //       ),
        //     ),
        //   ),
        // ),
        // ),
                ],
              ),
           
            Center(
              child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(widget.summerVacation.placeName,
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
      
  }
}