import 'package:adventurist/constants/colors/fontcolors.dart';
import 'package:flutter/material.dart';

class TopExperienceItemModel{
  final String imagePath;
  final String placeName;
  final String companyName;
  final String price;

  TopExperienceItemModel ({
    required this.imagePath,
    required this.placeName,
    required this.companyName,
    required this.price,
  });
}

/////////////////

class TopExperienceItemModeldata{
  // static var statusList =[

  final List<TopExperienceItemModel> topExperiences =[
    TopExperienceItemModel(
      imagePath: "https://images.pexels.com/photos/17687401/pexels-photo-17687401/free-photo-of-hotel-on-island-in-montenegro.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", placeName: 'Beautufil Island with beatutiful views', companyName: 'Daewoo', price: '\$999',
    ),
    TopExperienceItemModel(
      imagePath: "https://images.pexels.com/photos/17809559/pexels-photo-17809559/free-photo-of-people-riding-on-camels-in-giza.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", placeName: 'Enjoy your picnic somewhere in Desrt', companyName: 'Daewoo', price: '\$999',
    ),
    TopExperienceItemModel(
      imagePath: "https://images.pexels.com/photos/3776847/pexels-photo-3776847.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", placeName: 'Forest Picnics', companyName: 'Daewoo', price: '\$999',
    ),
    TopExperienceItemModel(
      imagePath: "https://images.pexels.com/photos/3810798/pexels-photo-3810798.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", placeName: 'Make your self feel Special in Fivestar Hotels', companyName: 'Daewoo', price: '\$999',
    ),
    TopExperienceItemModel(
      imagePath: "https://images.pexels.com/photos/1021073/pexels-photo-1021073.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", placeName: 'Beautufil Island with beatutiful views', companyName: 'Daewoo', price: '\$999',
    ),

  ];

}

///////////

class TopExperienceCards extends StatefulWidget {
  final TopExperienceItemModel topExperience;
  //  final String imagePath;  // final String placeName;   // final String companyName; // final String price;
 
  const TopExperienceCards({super.key,
    required this.topExperience
    // required this.imagePath,  //   required this.placeName,  //   required this.companyName, //   required this.price,
    });

  @override
  State<TopExperienceCards> createState() => _TopExperienceCardsState();
}

class _TopExperienceCardsState extends State<TopExperienceCards> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;
    return  Padding( 
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
                    child: Image(image: NetworkImage(widget.topExperience.imagePath),
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
                    child: Text(widget.topExperience.placeName,
                    style: const TextStyle(fontFamily: Medium, fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(widget.topExperience.companyName,
                    style: const TextStyle(fontFamily: Medium, fontSize: 14, color: blackColor),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(widget.topExperience.price,
                    style: const TextStyle(fontFamily: Medium, fontSize: 18,fontWeight: FontWeight.bold, color: blackColor), 
                                  ),
                  
                  ) ,
                  
                  ],
          ), ),
          
      ),
    );
  }
}