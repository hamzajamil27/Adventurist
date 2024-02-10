import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';

class WeekEndTripIdeas extends StatefulWidget {

  final String imageI;
  final String cityname;
  const WeekEndTripIdeas({super.key, 
  
    required this.imageI,
    required this.cityname,
    }
    );

  @override
  State<WeekEndTripIdeas> createState() => _WeekEndTripIdeasState();
}

class _WeekEndTripIdeasState extends State<WeekEndTripIdeas> {
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
                          child: Image(image: NetworkImage(widget.imageI),
                          fit: BoxFit.cover,
                           height: height * .30),
                        ),
                        Positioned(bottom: 10,left: 10,
                          child: Align( alignment: Alignment.center,
                            child: Center(
                              child: Text(widget.cityname, 
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