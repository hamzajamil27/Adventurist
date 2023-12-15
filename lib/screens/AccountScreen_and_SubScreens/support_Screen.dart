// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height * 1;
    

    return Scaffold( backgroundColor: Colors.white,
      appBar: AppBar(
         elevation: 0,
        iconTheme:  const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,

        title: const Padding(
          padding:  EdgeInsets.only(right: 50),
          child: Center(
            child:  Text("Support",
             style: TextStyle(
               
                color: Colors.black,
                fontWeight: FontWeight.bold,)
                ),
          ),
        ),
       ),

       body: Padding(
         padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
         child: ListView(children: [
       
           SizedBox(height: height * .02 ),
          
                ListTile(
                title: const Text("Help Centre", style:TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),),
                trailing:const Icon(Icons.arrow_outward_outlined, color: Colors.black, size: 24,),
              onTap: (){},
               ),
       
                SizedBox(height: height * .02 ),
          
                ListTile(
                title: const Text("App feedback", style:TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),),
                trailing:const Icon(Icons.arrow_outward_outlined, color: Colors.black, size: 24,),
              onTap: (){},
               ),
                SizedBox(height: height * .02 ),
          
                ListTile(
                title: const Text("Privacy Policy", style:TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),),
                trailing:const Icon(Icons.arrow_outward_outlined, color: Colors.black, size: 24,),
              onTap: (){},
               ),
                SizedBox(height: height * .02 ),
          
                ListTile(
                title: const Text("Term of use", style:TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),),
                trailing:const Icon(Icons.arrow_outward_outlined, color: Colors.black, size: 24,),
              onTap: (){},
               ),
       
       
         ],),
       ),
    );
  }
}