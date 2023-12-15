import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';

class BeyondTheBeach extends StatefulWidget {

   final String beyondbeachimage;
  final String beyondbeachplaceName;
  final String beyondbeachcompanyName;
  final String beyondbeachprice;

  
    
  const BeyondTheBeach({super.key,
   
    required this.beyondbeachimage,
    required this.beyondbeachplaceName,
    required this.beyondbeachcompanyName,
    required this.beyondbeachprice,
  });

  @override
  State<BeyondTheBeach> createState() => _BeyondTheBeachState();
}

class _BeyondTheBeachState extends State<BeyondTheBeach> {
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
                    child: Image(image: NetworkImage(widget.beyondbeachimage),
                    fit: BoxFit.fill,
                    height: height * .3,),

                  ),

                  Align(alignment: Alignment.topRight,
                    child: Container(
                      height: height * .08,
                      width: width * .08,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 223, 222, 222),
                      ),
                      child: const Icon(Icons.favorite_border),
                    ),
                  ),
                ],
              ),
           
            Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(widget.beyondbeachplaceName, 
                    style: const TextStyle(fontFamily: Medium, fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(widget.beyondbeachcompanyName, 
                    style: const TextStyle(fontFamily: Medium, fontSize: 14, color: blackColor),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(widget.beyondbeachprice,
                    style: const TextStyle(fontFamily: Medium, fontSize: 18,fontWeight: FontWeight.bold, color: blackColor), 
                                  ),
                  
                  ) ,
                  
                  ],
          ), ),
          
      ),
    );
      
  }
}