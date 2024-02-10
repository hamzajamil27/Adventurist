import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:adventurist/models/beachdayforbooks/extraScreen.dart';
import 'package:flutter/material.dart';

class Beachdayitemmodel{
  final String imagebeach;
  final String beachname;


  Beachdayitemmodel({
    required this.imagebeach,
    required this.beachname,
  }
      );
}
/////////////////

class Beachdayitemmodeldata {
 // static var statusList = [
  final List<Beachdayitemmodel> beachDayItems = [
    Beachdayitemmodel(
        imagebeach: "https://images.pexels.com/photos/14539540/pexels-photo-14539540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", beachname: 'Corfu'  ),

    Beachdayitemmodel(
        imagebeach: "https://images.pexels.com/photos/11891076/pexels-photo-11891076.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", beachname: 'Ibiza' ),

    Beachdayitemmodel (
        imagebeach: "https://images.pexels.com/photos/883758/pexels-photo-883758.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", beachname: 'Majorca' ),

    Beachdayitemmodel (
        imagebeach: "https://images.pexels.com/photos/1285625/pexels-photo-1285625.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", beachname: 'Santorini' ),

    Beachdayitemmodel (
        imagebeach: "https://images.pexels.com/photos/3754810/pexels-photo-3754810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", beachname: 'Sicily' ),
    // Add more travel data entries
  ];

}

//////////////////////////

class BeachDayCard extends StatefulWidget {
  final Beachdayitemmodel beachDayItem;
  // final String imagebeach;
  // final String beachname;

  BeachDayCard({super.key,
     required this.beachDayItem
    // required this.imagebeach,
    // required this.beachname,

   });

  @override
  State<BeachDayCard> createState() => _BeachDayCardState();
}

class _BeachDayCardState extends State<BeachDayCard> {
  @override
  Widget build(BuildContext context) {
   
   final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;

    return GestureDetector(
      onTap: (){
        MaterialPageRoute(
          builder: (context) => ExtraScreen(
              items: widget.beachDayItem
          ),
        );

      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: InkWell( onTap: (){
          Navigator.push(
            context,
          MaterialPageRoute(
            builder: (context) => ExtraScreen(
                items: widget.beachDayItem
            ),),
          );
        },
          child: SizedBox( 
            height: height * .4,
            width: width* .6,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ClipRRect( borderRadius: BorderRadius.circular(10),
                            child: Image(image: NetworkImage(widget.beachDayItem.imagebeach),
                            fit: BoxFit.cover,
                             height: height * .35),
                          ),
                          Positioned(bottom: 10,left: 10,
                            child: Align( alignment: Alignment.center,
                              child: Center(
                                child: Text(widget.beachDayItem.beachname,
                                style: const TextStyle(
                                            fontFamily: Medium,
                                            fontSize: 34, 
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,),
                                            ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
          ),
        ),
      ),
    );
  }
}