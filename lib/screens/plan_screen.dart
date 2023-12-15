import 'package:adventurist/screens/Tab_Bar_Screen/saved_Trip_Screen.dart';
import 'package:adventurist/screens/Tab_Bar_Screen/trip_Screen.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
   
   final List<Widget> tabs = const [

    Tab(child: Text("Trip", style: TextStyle(color: Colors.black, fontSize:18 ),),),
    Tab(child: Text("Saved",  style: TextStyle(color: Colors.black, fontSize:18 ),),),
  
  ];
  @override
  Widget build(BuildContext context) {
     


    return  DefaultTabController( length: tabs.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar( 
          automaticallyImplyLeading: false,
          // toolbarHeight: 110,
          backgroundColor: Colors.white,
          title: const Padding(
            padding:  EdgeInsets.only(left: 20),
            child:  Text("Plan",  style: TextStyle(color: Colors.black, fontSize:34 ),),
          ),
         iconTheme: const IconThemeData(color: Colors.black),
         
          bottom:  PreferredSize(
            preferredSize: const Size.fromHeight(60) ,
            child : TabBar(tabs: tabs, ),
      
          ),
        ),
      
        body:  const TabBarView(
          
          children: [ 
            // Content for Tab 1
             TripScreen(),
            
            // Content for Tab 2
            SavedTripScreen(),
          ],
        ),
      ),
    );
  }
}