// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstSimpleScreen extends StatefulWidget {
  final String category;
  const FirstSimpleScreen({super.key, required this.category});

  @override
  State<FirstSimpleScreen> createState() => _FirstSimpleScreenState();
}

class _FirstSimpleScreenState extends State<FirstSimpleScreen> {
   final Map<String, dynamic> categoryData = {
    'Hotel': {'title': 'Hotels Nearby', 'icon': Icons.bed},
    'Restaurants': {'title': 'Restaurants Nearby', 'icon': Icons.restaurant},
    'Things to do': {'title': 'Things to do Nearby', 'icon': Icons.local_activity},
    'Forums': {'title': 'Forums Home', 'icon': Icons.forum},
  };
  String titleText = 'Hotels Nearby'; // Default title
  IconData leadingIcon = Icons.hotel; // Default icon
 
   @override
  void initState() {
    super.initState();
    // Set the initial title and icon based on the category parameter
    if (categoryData.containsKey(widget.category)) {
      titleText = categoryData[widget.category]['title'];
      leadingIcon = categoryData[widget.category]['icon'];
    }
  }

  @override
  Widget build(BuildContext context) {
        final height = MediaQuery.of(context).size.height * 1;
            final width  = MediaQuery.of(context).size.width  * 1;
// String titleText;
//     if (widget.category == 'Hotel') {
//       titleText = 'Hotels Nearby';
//     } else if (widget.category == 'Restaurants') {
//       titleText = 'Restaurants Nearby';
//     } else if (widget.category == 'Things to do') {
//       titleText = 'Things to do Nearby';
//     } else if (widget.category == 'Forums') {
//       titleText = 'Forums Home';
//     } else  {
//       titleText = 'Category Not Specified'; // You can provide a default if needed
//     }

    return Scaffold(
      appBar: AppBar(
         toolbarHeight: 100,
        backgroundColor: Colors.white,
         iconTheme: const IconThemeData(color: Colors.black),
        title:  Padding(
          padding: const EdgeInsets.only(right: 20),
          child: CupertinoTextField(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      placeholder: "Where to ?", style: const TextStyle( color: Color(0xff7b7b7b)),
                      prefix: const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(Icons.search, color: Colors.black),
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xfff7f7f7),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: CupertinoColors.systemGrey, width: 2.0),
                      ),
                    ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
      
          children: [
            SizedBox(height: height * .03,),
      
              ListTile(
                leading: Container(
                  height: height*.11,
                  width: width*.16,
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 206, 203, 203),
                   ),
                  child: Icon(leadingIcon,   // Use the dynamically determined icon
                  color: Colors.black, size: 36,)),
                title:  Text(titleText, style:const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
               
                onTap: (){},
               
               ),
      
               SizedBox(height: height * .03,),
      
              const Padding(
                 padding: EdgeInsets.only(left: 20),
                 child: Text("Popular destination", style:TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ), ),
               ),
      
                SizedBox(height: height * .02,),
      
              ListTile(
                leading: Container(
                  height: height*.11,
                  width: width*.16,
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 206, 203, 203),
                   ),
                  child: const Icon(Icons.location_on_outlined, color: Colors.black, size: 36,)),
                title: const Text("London", style:TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold ),),
                  subtitle: const Text("England, United Kingdom"),
               
                onTap: (){},
               
               ),
      
               SizedBox(height: height * .02,),
      
               ListTile(
                leading: Container(
                  height: height*.11,
                  width: width*.16,
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 206, 203, 203),
                   ),
                  child: const Icon(Icons.location_on_outlined, color: Colors.black, size: 36,)),
                title: const Text("Paris", style:TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                subtitle: const Text("Ile-de-France, France"),
               
                onTap: (){},
               
               ),
      
               SizedBox(height: height * .02,),
      
               ListTile(
                leading: Container(
                  height: height*.11,
                  width: width*.16,
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 206, 203, 203),
                   ),
                  child: const Icon(Icons.location_on_outlined, color: Colors.black, size: 36,)),
                title: const Text("New York City", style:TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                subtitle: const Text("America, United Statesof America"),
               
                onTap: (){},
               
               ),
      
               SizedBox(height: height * .02,),
      
               ListTile(
                leading: Container(
                  height: height*.11,
                  width: width*.16,
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 206, 203, 203),
                   ),
                  child: const Icon(Icons.location_on_outlined, color: Colors.black, size: 36,)),
                title: const Text("Chicago", style:TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                subtitle: const Text(" Illinois, United Statesof America"),
               
                onTap: (){},
               
               ),
      
               SizedBox(height: height * .02,),
      
               ListTile(
                leading: Container(
                  height: height*.11,
                  width: width*.16,
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 206, 203, 203),
                   ),
                  child: const Icon(Icons.location_on_outlined, color: Colors.black, size: 36,)),
                title: const Text("Istanbul", style:TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                subtitle: const Text(" Turkiye, Europe"),
               
                onTap: (){},
               
               ),
      
               SizedBox(height: height * .02,),
      
               ListTile(
                leading: Container(
                  height: height*.11,
                  width: width*.16,
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 206, 203, 203),
                   ),
                  child: const Icon(Icons.location_on_outlined, color: Colors.black, size: 36,)),
                title: const Text("Dubai", style:TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                subtitle: const Text("Emirates of Dubai, United Arab Emirates"),
               
                onTap: (){},
               
               ),
      
          ],
        ),
      )
    );
  }
}