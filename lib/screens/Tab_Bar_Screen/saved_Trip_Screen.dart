// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SavedTripScreen extends StatefulWidget {
  const SavedTripScreen({super.key});

  @override
  State<SavedTripScreen> createState() => _SavedTripScreenState();
}

class _SavedTripScreenState extends State<SavedTripScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center,
    children:   [

     const  SizedBox(height: 15,),

     const Text("No saves yet", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
      
     const SizedBox(height: 5,),

     const Text("Places you saves will appear here"),
      
     const SizedBox(height: 10,),

      InkWell(onTap: (){},
        child: const Text("Login to access your saves", 
         style: TextStyle(
          fontSize: 18, 
          fontWeight: FontWeight.bold, 
           decoration: TextDecoration.underline,
            decorationThickness: 2.0,
            ),
            ),
      ),
    ],

    );
  }
}