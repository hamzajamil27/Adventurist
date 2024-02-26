
import 'package:flutter/material.dart';

import '../../constants/colors/fontcolors.dart';
import 'extraScreen.dart';

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
        imagebeach: "https://cdn.pixabay.com/photo/2017/08/17/11/41/beach-2650976_960_720.jpg", beachname: 'Clifton Beach'  ),

    Beachdayitemmodel(
        imagebeach: "https://images.pexels.com/photos/11891076/pexels-photo-11891076.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", beachname: 'French Beach' ),

    Beachdayitemmodel (
        imagebeach: "https://images.unsplash.com/photo-1473116763249-2faaef81ccda?q=80&w=1496&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", beachname: 'Manoda' ),

    Beachdayitemmodel (
        imagebeach: "https://cdn.pixabay.com/photo/2018/03/16/20/13/seagull-3232350_960_720.jpg", beachname: 'Ormara Beach' ),

    // Beachdayitemmodel (
    //     imagebeach: "https://images.pexels.com/photos/3754810/pexels-photo-3754810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", beachname: 'Sicily' ),
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
            height: height * .3,
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
                                            fontSize: 30,
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