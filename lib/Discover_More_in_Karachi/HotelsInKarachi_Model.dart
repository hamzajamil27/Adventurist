import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';

import 'Hoteldetails.dart';

class KarachiHotelsModel{
  final String ImagePath;
  final String hotelname;
  final String Decription;
  final String price;

  KarachiHotelsModel({
    required this.ImagePath,
    required this.hotelname,
    required this.Decription,
    required this.price,
  }
      );
}
/////////////

class KarachiHotelsModeldata {

  final List<KarachiHotelsModel> karachiHotels= [

    KarachiHotelsModel(
      ImagePath: "https://images.pexels.com/photos/172872/pexels-photo-172872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",  hotelname: "Pearl Continental Karachi", Decription : "Welcome to Pearl Continental Karachi, where luxury meets comfort in the heart of Pakistan's bustling metropolis. With breathtaking views of the Arabian Sea, our hotel offers unrivaled elegance and impeccable service. Indulge in exquisite dining experiences, relax by our shimmering pool, and experience the epitome of opulence in our lavish accommodations. Discover true Pakistani hospitality at Pearl Continental Karachi.", price: '\$200 - 300',
    ),

    KarachiHotelsModel (
      ImagePath: "https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel-1749602_1280.jpg", hotelname:"Hotel Excelsior", Decription : "Welcome to Hotel Excelsior, where comfort and elegance converge to create an unforgettable experience. Situated in the heart of the city, our hotel offers luxurious accommodations, impeccable service, and breathtaking views. Indulge in gourmet dining, unwind in our spa, and explore nearby attractions. Discover the essence of refined hospitality at Hotel Excelsior.", price: '\$200 - 300',
    ),
    KarachiHotelsModel (
      ImagePath: "https://cdn.pixabay.com/photo/2017/01/14/12/48/hotel-1979406_960_720.jpg",hotelname: "Avari Hotel Karchi", Decription: "Experience the epitome of sophistication at Avari Karachi. Nestled in the heart of the city, our hotel offers a perfect blend of modern luxury and traditional charm. Enjoy unparalleled hospitality, world-class dining, and luxurious accommodations. Whether you're here for business or leisure, Avari Karachi promises an unforgettable stay.",price: '\$200 - 300',
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
                    child: Image(image: NetworkImage(widget.karachiHotel.ImagePath),
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
