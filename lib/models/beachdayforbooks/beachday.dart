import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';

class BeachDay extends StatefulWidget {

  final String imagebeach;
  final String beachname;
    
  const BeachDay({super.key,
    required this.imagebeach,
    required this.beachname,});

  @override
  State<BeachDay> createState() => _BeachDayState();
}

class _BeachDayState extends State<BeachDay> {
  @override
  Widget build(BuildContext context) {
   
   final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell( onTap: (){},
        child: SizedBox( 
          height: height * .4,
          width: width* .6,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect( borderRadius: BorderRadius.circular(10),
                          child: Image(image: NetworkImage(widget.imagebeach),
                          fit: BoxFit.cover,
                           height: height * .35),
                        ),
                        Positioned(bottom: 10,left: 10,
                          child: Align( alignment: Alignment.center,
                            child: Center(
                              child: Text(widget.beachname, 
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