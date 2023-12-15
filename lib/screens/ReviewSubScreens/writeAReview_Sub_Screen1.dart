// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WriteReviewSubScreen1 extends StatefulWidget {
  const WriteReviewSubScreen1({super.key});

  @override
  State<WriteReviewSubScreen1> createState() => _WriteReviewSubScreen1State();
}

class _WriteReviewSubScreen1State extends State<WriteReviewSubScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar( toolbarHeight: 120,
        backgroundColor: Colors.white,
       iconTheme: const IconThemeData(color: Colors.black),
        
        title: const Text("Search", style: TextStyle(
            fontSize: 34,
            color: Colors.black,
            fontWeight: FontWeight.bold,

          ),),

          bottom:  PreferredSize(        //search bar is made using CupertinTextfield in AppBar using Bottom widget

          preferredSize: const Size.fromHeight(70),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
            child: Row(
              children: [
                Expanded(
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
                      border: Border.all(color: CupertinoColors.black, width: 2.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ), 

      ),

    
    );
  }
}