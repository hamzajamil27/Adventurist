// ignore_for_file: file_names

import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';

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
  }
      );
}
/////////////

class SummerVacationItemModeldata {

  final List<SummervacationItemModel> summerVacations= [

    SummervacationItemModel(
      imagePath: "https://images.unsplash.com/photo-1598461814968-639d9321f483?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", placeName: 'Multan', companyName: 'Daewoo', price: '\$200 - 300',
      hotelsImage: "https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_960_720.jpg", hotelname: "Avari Xpress Boutique Residence, Multan", Decription : "Avari Xpress Boutique Residence is a hotel located in Multan, Pakistan. It offers boutique-style accommodations with modern amenities and facilities. The hotel is known for its comfortable rooms, personalized service, and convenient location for both business and leisure travelers visiting Multan. Avari Xpress Boutique Residence aims to provide a unique and memorable stay experience for its guests.",
    hotelImagetwo: "https://cdn.pixabay.com/photo/2016/03/28/09/34/bedroom-1285156_1280.jpg", hotelnametwo:"Hotel One Lalazar Multan", Decriptiontwo : "Hotel One Lalazar is a conveniently located hotel in Lalazar Colony, Multan, Pakistan. It offers comfortable accommodations, on-site dining, meeting facilities, and complimentary Wi-Fi. Ideal for both business and leisure travelers, it provides a pleasant stay experience with modern amenities and professional service.",
        hotelImagethree:"https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel-1749602_1280.jpg", hotelnamethree: "Faletti's Grand Multan", Decriptionthree: "Faletti's Grand in Multan, Pakistan, is a renowned hotel known for its luxury accommodations, fine dining, and top-notch amenities. It's a popular choice for both business and leisure travelers seeking a sophisticated stay experience in the heart of the city."),

    SummervacationItemModel(
      imagePath: "https://images.unsplash.com/photo-1603491656337-3b491147917c?q=80&w=1476&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", placeName: 'Lahore', companyName: 'Faisal Mover', price: '\$1499 - 600',
  hotelsImage: "https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_960_720.jpg", hotelname: "Pearl Continental Lahore", Decription : "Experience the epitome of luxury at Pearl Continental Lahore. Nestled in the heart of Pakistan's cultural hub, our hotel offers unrivaled elegance and warm hospitality. Indulge in exquisite dining, relax in opulent accommodations, and immerse yourself in the vibrant atmosphere of Lahore. Whether for business or leisure, your stay with us promises unforgettable moments and cherished memories.",
  hotelImagetwo: "https://cdn.pixabay.com/photo/2016/03/28/09/34/bedroom-1285156_1280.jpg", hotelnametwo:"Royal Swiss Lahore", Decriptiontwo : "Welcome to Royal Swiss Lahore, where luxury and comfort intertwine to redefine hospitality. Situated in the heart of the city, our hotel offers a haven of elegance and sophistication. Enjoy exceptional service, gourmet dining, and lavish accommodations tailored to exceed your expectations. Experience the essence of luxury living amidst Lahore's bustling energy at Royal Swiss Lahore.",
  hotelImagethree:"https://lh3.googleusercontent.com/p/AF1QipPFqx-SMoXbsoPC2sJyRR2V7ktka2gTigHk3uNP=s680-w680-h510", hotelnamethree: "Avari Hotel Lahore", Decriptionthree: "Discover a world of luxury and tranquility at Avari Hotel Lahore. Nestled in the vibrant heart of the city, our hotel offers a haven of comfort and elegance. Experience impeccable service, exquisite dining, and opulent accommodations. Whether you're here for business or leisure, Avari Hotel Lahore promises an unforgettable stay immersed in Pakistani hospitality"
  ),

    SummervacationItemModel (
      imagePath: "https://images.unsplash.com/photo-1617373743747-3bb331fd4e8d?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", placeName: 'Karachi', companyName: 'Night Travelers', price: '\$560 - 499',
  hotelsImage: "https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_960_720.jpg", hotelname: "Pearl Continental", Decription : "Welcome to Pearl Continental Karachi, where luxury meets comfort in the heart of Pakistan's bustling metropolis. With breathtaking views of the Arabian Sea, our hotel offers unrivaled elegance and impeccable service. Indulge in exquisite dining experiences, relax by our shimmering pool, and experience the epitome of opulence in our lavish accommodations. Discover true Pakistani hospitality at Pearl Continental Karachi.",
  hotelImagetwo: "https://cdn.pixabay.com/photo/2016/03/28/09/34/bedroom-1285156_1280.jpg", hotelnametwo:"Hotel Excelsior", Decriptiontwo : "Welcome to Hotel Excelsior, where comfort and elegance converge to create an unforgettable experience. Situated in the heart of the city, our hotel offers luxurious accommodations, impeccable service, and breathtaking views. Indulge in gourmet dining, unwind in our spa, and explore nearby attractions. Discover the essence of refined hospitality at Hotel Excelsior.",
  hotelImagethree:"https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel-1749602_1280.jpg", hotelnamethree: "Avari Hotel Karchi", Decriptionthree: "Experience the epitome of sophistication at Avari Karachi. Nestled in the heart of the city, our hotel offers a perfect blend of modern luxury and traditional charm. Enjoy unparalleled hospitality, world-class dining, and luxurious accommodations. Whether you're here for business or leisure, Avari Karachi promises an unforgettable stay."

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
                    child: Text(widget.summerVacation.placeName,
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
      
  }
}