import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';

class KarachiHotelsModel{
  final String ImagePath;
  final String placeName;
  final String companyName;
  final String price;

  KarachiHotelsModel({
    required this.ImagePath,
    required this.placeName,
    required this.companyName,
    required this.price,
  }
      );
}
/////////////

class KarachiHotelsModeldata {

  final List<KarachiHotelsModel> karachiHotels= [

    KarachiHotelsModel(
      ImagePath: "https://cdn.pixabay.com/photo/2016/03/28/09/34/bedroom-1285156_960_720.jpg", placeName: 'Karachi', companyName: 'Avari Hotel', price: '\$999',
    ),

    KarachiHotelsModel(
      ImagePath: "https://cdn.pixabay.com/photo/2016/06/10/01/05/hotel-room-1447201_960_720.jpg", placeName: 'Karchi', companyName: 'Faizi ka ghar', price: '\$1499',
    ),

    KarachiHotelsModel (
      ImagePath: "https://cdn.pixabay.com/photo/2020/10/18/09/16/bedroom-5664221_960_720.jpg", placeName: 'Karachi', companyName: 'Molana ka ghar', price: '\$560',
    ),
    KarachiHotelsModel (
      ImagePath: "https://cdn.pixabay.com/photo/2017/01/14/12/48/hotel-1979406_960_720.jpg", placeName: 'Karachi', companyName: 'Pearl Contenantal', price: '\$560',
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
                child: Text(widget.karachiHotel.placeName,
                  style: const TextStyle(fontFamily: Medium, fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(widget.karachiHotel.companyName,
                  style: const TextStyle(fontFamily: Medium, fontSize: 14, color: blackColor),),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(widget.karachiHotel.price,
                  style: const TextStyle(fontFamily: Medium, fontSize: 18,fontWeight: FontWeight.bold, color: blackColor),
                ),

              ) ,

            ],
          ), ),

      ),
    );
  }
}
