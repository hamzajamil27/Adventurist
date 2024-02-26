// ignore_for_file: file_names

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utilities/flutterToastUtilities.dart';
import '../../constants/buttons.dart';

class WriteReviewSubScreen1 extends StatefulWidget {
  const WriteReviewSubScreen1({super.key});

  @override
  State<WriteReviewSubScreen1> createState() => _WriteReviewSubScreen1State();
}

class _WriteReviewSubScreen1State extends State<WriteReviewSubScreen1> {

final postController = TextEditingController();
 bool loading = false;
 final databaseRef = FirebaseDatabase.instance.ref('Deploy');
  @override 
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width  = MediaQuery.of(context).size.width  * 1;
    return  Scaffold( backgroundColor: Colors.white,
    appBar: AppBar(
        elevation: 0,
        title: Text("Write your Review "),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: height*.14,),
            TextFormField(
              maxLines: 4,
              controller: postController,
              decoration: InputDecoration(
                labelText: "What is in your mind?",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),               
                ),
              ),
            ),
              SizedBox(height: height * .02 ),
                CustomButton(      //  calling a button from buttons.dart
                          borderColor: Colors.black,
                           backgroundColor: const Color.fromARGB(255, 0, 51, 94),
                           text: 'Post',
                           loading: loading,
                           textColor: Colors.white,
                           onPressed: () {
                            setState(() {
                              loading = true;
                            });

                           // now we are creating a table and table has a child which will be Row and Column
                           // Insdie the Child there is a ID and should be unique that's why we use: " DateTime.now().milliseconds.toString() " because time changes in milliseconds  and that wgy it is easy to create a new ID                      
                           // databaseRef.child(DateTime.now().millisecond.toString()).child("Like").child("Subscribe").child("Share").set({ 
                              databaseRef.child(DateTime.now().millisecond.toString()).set({                  // here the keyword "set({})"  add the data
                              "id"    :  DateTime.now().millisecond.toString(),
                              "title" :  postController.text.toString(),
                            }).then((value) {
                              FlutterToastUtils().toastMessage("Post Added");
                            setState(() {
                              loading = false;
                            });

                            }). onError((error, stackTrace){
                              FlutterToastUtils().toastMessage("Something error has occured"); 
                            setState(() {
                              loading = false;
                            });
                            
                            });

                              },
                               buttonWidth: width*.4, // Set the desired width for the button
                               buttonHeight: 50, // Set the desired height for the button
                              ),
            
          ],
        ),
      ),
    );
   }
}