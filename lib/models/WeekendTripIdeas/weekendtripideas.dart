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
        imageI: "https://images.pexels.com/photos/14406067/pexels-photo-14406067.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Lahore'  ),

    Tripideaweekenditemmodel(
        imageI: "https://images.pexels.com/photos/1057840/pexels-photo-1057840.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", cityname: 'Berlin' ),

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
    );
  }
}