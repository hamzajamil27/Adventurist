import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';

class Beyondthebeachitemmodel{
  final String image;
  final String placeName;
  final String companyName;
  final String price;

  Beyondthebeachitemmodel({
    required this.image,
    required this.placeName,
    required this.companyName,
    required this.price,
  }
      );
}
///////

class Beyondthebeachitemdata {
  // static var statusList = [
  final List<Beyondthebeachitemmodel> beachItems =[

    Beyondthebeachitemmodel(
      image: "https://images.pexels.com/photos/1559388/pexels-photo-1559388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", placeName: 'Horse riding ', companyName: 'Daewoo', price: '\$999',
    ),

    Beyondthebeachitemmodel(
      image: "https://images.pexels.com/photos/831056/pexels-photo-831056.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", placeName: 'beautiful view side in Iceland', companyName: 'Faisal Mover', price: '\$1499',
    ),

    Beyondthebeachitemmodel (
      image: "https://images.pexels.com/photos/3098970/pexels-photo-3098970.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", placeName: 'seadiving in Dubais', companyName: 'Night Travelers', price: '\$560',
    ),
    // Add more travel data entries
  ];


}

//////

class BeyondTheBeachCard extends StatefulWidget {
 final Beyondthebeachitemmodel beachitem;
  //  final String beyondbeachimage;  // final String beyondbeachplaceName;  // final String beyondbeachcompanyName; // final String beyondbeachprice;

  const BeyondTheBeachCard({super.key,
   required this.beachitem
    // required this.beyondbeachimage,   // required this.beyondbeachplaceName, // required this.beyondbeachcompanyName, // required this.beyondbeachprice,
  });

  @override
  State<BeyondTheBeachCard> createState() => _BeyondTheBeachCardState();
}

class _BeyondTheBeachCardState extends State<BeyondTheBeachCard> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;
    
    return Padding( 
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(onTap: (){},
        child: SizedBox( 
          height: height * .4,
          width: width * .6,
          
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Stack(
                children: [
                  ClipRRect( borderRadius: BorderRadius.circular(10),
                    child: Image(image: NetworkImage(widget.beachitem.image),
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
                    child: Text(widget.beachitem.placeName,
                    style: const TextStyle(fontFamily: Medium, fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(widget.beachitem.companyName,
                    style: const TextStyle(fontFamily: Medium, fontSize: 14, color: blackColor),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(widget.beachitem.price,
                    style: const TextStyle(fontFamily: Medium, fontSize: 18,fontWeight: FontWeight.bold, color: blackColor), 
                                  ),
                  
                  ) ,
                  
                  ],
          ), ),
          
      ),
    );
      
  }
}