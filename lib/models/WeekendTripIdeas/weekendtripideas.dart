import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';

class Tripideaweekenditemmodel{
  final String imageI;
  final String cityname;


  Tripideaweekenditemmodel({
    required this.imageI,
    required this.cityname,
  }
      );
}

/////////////////

class Tripideaweekenditemmodeldata {
  //static var statusList = [
  final List<Tripideaweekenditemmodel> tripIdeas = [

    Tripideaweekenditemmodel(
        imageI: "https://images.unsplash.com/photo-1578562501518-fc75b2484885?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", cityname: 'Murree'  ),

    Tripideaweekenditemmodel(
        imageI: "https://images.unsplash.com/photo-1659293155300-f4cc8b866e80?q=80&w=1633&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", cityname: 'Khunjerab park' ),

    Tripideaweekenditemmodel (
        imageI: "https://images.pexels.com/photos/1823681/pexels-photo-1823681.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Chicago' ),

    Tripideaweekenditemmodel (
        imageI: "https://images.pexels.com/photos/1239162/pexels-photo-1239162.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'New York' ),

    Tripideaweekenditemmodel (
        imageI: "https://images.pexels.com/photos/1006965/pexels-photo-1006965.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'San-Fransisco' ),
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
      padding: const EdgeInsets.only(left: 20),
      child: InkWell( onTap: (){},
        child: SizedBox( 
          height: height * .30,
          width: width* .6,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect( borderRadius: BorderRadius.circular(10),
                          child: Image(image: NetworkImage(widget.tripIdea.imageI),
                          fit: BoxFit.cover,
                           height: height * .30),
                        ),
                        Positioned(bottom: 10,left: 10,
                          child: Align( alignment: Alignment.center,
                            child: Center(
                              child: Text(widget.tripIdea.cityname,
                              style: const TextStyle(
                                          fontFamily: Medium,
                                          fontSize: 28,
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
    );
  }
}