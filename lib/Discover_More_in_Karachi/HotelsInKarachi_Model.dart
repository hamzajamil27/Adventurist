import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';

import 'Hoteldetails.dart';

class KarachiHotelsModel{
  final String hotelsImage;
  final String hotelname;
  final String Decription;
  final String linkOne;

  KarachiHotelsModel({
    required this.hotelsImage,
    required this.hotelname,
    required this.Decription,
    required this.linkOne,
  }
      );
}
/////////////

class KarachiHotelsModeldata {

  final List<KarachiHotelsModel> karachiHotels= [

    KarachiHotelsModel(
      hotelsImage: "https://images.pexels.com/photos/276671/pexels-photo-276671.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelname: "Pearl Continental Hotel, Karachi", Decription : "Located in the commercial centre of south central Karachi, The 5-star Pearl Continental Hotel offers luxurious and modern rooms with free Wi-Fi. 6 dining options and an indoor pool await guests.\n\nAir-conditioned and fully carpeted, each room features a flat-screen satellite TV, minibar and iron. Private bathroom includes a hair dryer and shower. A seating area, safe and coffee machine is standard in all rooms.\n\nGuests who drive enjoy valet and free private parking. Conveniences include a car rental, concierge and tour desk.\n\nKarachi’s city centre, Saddar is 2 km from the hotel. Jinnah International Airport is approximately 16 km or a 30-minute drive away.\n\nA variety of dining options are available at Pearl Continental Hotel, Karachi. These include European dishes at Marco Polo Restaurant and Japanese meals at Sakura Restaurant. Chandni Restaurant offers Pakistani cuisine. There are also restaurants serving Chinese and American food.",
      linkOne: "https://www.booking.com/hotel/pk/pearl-continental-karachi.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dest_id=415288;dest_type=hotel;dist=0;group_adults=2;group_children=0;hapos=1;hpos=1;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;srepoch=1708815326;srpvid=341ca12a184a00af;type=total;ucfs=1&#hotelTmpl",

    ),

    KarachiHotelsModel (
      hotelsImage: "https://images.pexels.com/photos/172872/pexels-photo-172872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", hotelname:"Hotel Excelsior Hotel, Karachi", Decription : "Hotel Excelsior Karachi is situated in Karachi, in the Saddar Town district. With free WiFi, this 4-star hotel offers room service and a 24-hour front desk. There is a restaurant serving Chinese cuisine, and free private parking is available.\n\nThe hotel will provide guests with air-conditioned rooms offering a desk, a kettle, a fridge, a minibar, a safety deposit box, a flat-screen TV and a private bathroom with a shower. At Hotel Excelsior Karachi rooms include bed linen and towels.\n\nThe nearest airport is Jinnah International, 17 km from the accommodation, and the property offers a paid airport shuttle service.",
      linkOne: "https://www.booking.com/hotel/pk/excelsior-karachi.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dist=0;group_adults=2;group_children=0;hapos=1;hpos=1;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=distance_from_search;srepoch=1708815423;srpvid=ee3ca159f3d100e8;type=total;ucfs=1&#hotelTmpl",
    ),
    KarachiHotelsModel (
      hotelsImage:"https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel-1749602_1280.jpg", hotelname: "Avari Hotel Karchi", Decription: "Avari Tower features an outdoor pool, spa and fitness centre. Offering modern air conditioned rooms, the property provides free WiFi in all areas. It is 15 km from Jinnah Airport.\n\nRooms come with a flat-screen cable/satellite TV, safety deposit box and minibar. Shower facilities are included in private bathrooms.\n\nStaff at the 24-hour front desk can assist guests with currency exchange and laundry service. The hotel has a tennis court and business centre.\n\nGuests can enjoy a variety of cuisines at the hotel’s dining outlets.",
      linkOne: "https://www.booking.com/hotel/pk/avari-tower-karachi.en-gb.html?aid=311984&label=fortalice-multan-TKHkFu4zTXvodxABXX3V0wS393073875495%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-977466966383%3Alp1011081%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXORK0YJiVoOxcWODxYDaAA&sid=aeb7fb62a1058b3f7dc1c642f3061b6c&dist=0;group_adults=2;group_children=0;hapos=4;hpos=4;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=distance_from_search;srepoch=1708815473;srpvid=e87ba173c38401dd;type=total;ucfs=1&#hotelTmpl",
    ),
    // Add more travel data entries
  ];

}

class KarachiHotelsCard extends StatefulWidget {
  final KarachiHotelsModel karachiHotel;

  const KarachiHotelsCard({super.key, required this.karachiHotel});

  @override
  State<KarachiHotelsCard> createState() => _KarachiHotelsCardState();
}

class _KarachiHotelsCardState extends State<KarachiHotelsCard> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        onTap: (){
          Navigator.push( context, MaterialPageRoute(builder: (context) =>   HotelDetailsKarachi(karachiHotel: widget.karachiHotel)),
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
                    child: Image(image: NetworkImage(widget.karachiHotel.hotelsImage),
                      fit: BoxFit.fill,
                      height: height * .3,),

                  ),

                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          // Toggle the pressed state
                          setState(() {
                            isPressed = !isPressed;
                          });
                        },
                        child: Container(
                          height: height * 0.08,
                          width: width * 0.08,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isPressed ? Colors.red : Color.fromARGB(255, 223, 222, 222),
                          ),
                          child: Icon(
                            Icons.favorite_border,
                            color: isPressed ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(widget.karachiHotel.hotelname,
                  style: const TextStyle(fontFamily: Medium, fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
              ),

              // Padding(
              //   padding: const EdgeInsets.only(top: 2),
              //   child: Text(widget.karachiHotel.companyName,
              //     style: const TextStyle(fontFamily: Medium, fontSize: 14, color: blackColor),),
              // ),
              //
              // Padding(
              //   padding: const EdgeInsets.only(top: 5),
              //   child: Text(widget.karachiHotel.price,
              //     style: const TextStyle(fontFamily: Medium, fontSize: 18,fontWeight: FontWeight.bold, color: blackColor),
              //   ),
              //
              // ) ,

            ],
          ), ),

      ),
    );
  }
}
