// ignore_for_file: file_names

import 'package:adventurist/Utilities/flutterToastUtilities.dart';
import 'package:adventurist/constants/buttons.dart';
import 'package:adventurist/screens/AccountScreen_and_SubScreens/support_Screen.dart';
import 'package:adventurist/screens/signin_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  
  final auth = FirebaseAuth.instance;
  bool user = false;

  @override
  Widget build(BuildContext context) {
    
    final height = MediaQuery.of(context).size.height * 1;
    final width  = MediaQuery.of(context).size.width  * 1;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account", style: TextStyle(color: Colors.black, fontSize:36 , fontWeight: FontWeight.bold),),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right : 20),
          child: CircleAvatar( 
                    backgroundImage: NetworkImage("https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=600"),
                          ),
        ),
      ],
      ),
    
    
    
      backgroundColor: Colors.white,
      
      body: SingleChildScrollView(

        
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right : 20),
          child:  (user==true ) ? Column( mainAxisAlignment: MainAxisAlignment.start,                // Making a condition. If user is Signin then show this complete column
                         crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          
          SizedBox(height: height*.05,),
          
               Container(                       // See whats Good Near By
                          height: height * .23,
                          width: width * .9,
                          decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10),), 
                         color: Color.fromARGB(255, 221, 219, 219),
                         ),
                          
                          child: Column(     
                            children:  [ 
                             SizedBox(height: height* .03,),
                            const Text("Sign in to manage your booking and easily plan your next plan trip", 
                             style: TextStyle( fontSize: 16, color: Colors.black), textAlign: TextAlign.center,),
                     
                          SizedBox(height: height*.04,),
                     
                  CustomButton(      //  calling a button from buttons.dart
                        borderColor: Colors.black,
                         backgroundColor: Colors.black,
                         icon: Icon(Icons.login_outlined),
                         text: 'Sign in',
                         textColor: Colors.white,
                         onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => const SignInScreen()),),
                );
                            },
                             buttonWidth: 250, // Set the desired width for the button
                             buttonHeight: 50, // Set the desired height for the button
                            ),
                            ],
                    
                          ),
                         ),
              
                         
           SizedBox(height: height * .02 ),
          
           ListTile(
              leading: const Icon(Icons.settings, color: Colors.black, ),
              title: const Text("Prefrences", style:TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold) ,),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, ),
              onTap: (){},
             ),
              
             SizedBox(height: height * .02 ),
          
              ListTile(
              leading:const Icon(Icons.headset_mic_outlined, color: Colors.black,),
              title: const Text("Support", style:TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold),),
              trailing:const Icon(Icons.arrow_forward_ios, color: Colors.black,),
            onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: ((context) => const SupportScreen()),),
                );
            },
             ),
              
             SizedBox(height: height * .02 ),
          
              ListTile( 
              leading: const Icon(Icons.place_outlined, color: Colors.black, ),
              title: const Text("Adventurist Plus", style:TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold) ,),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black,),
              onTap: (){},
             )
          
            ],
          
          ):
          //  Otherwise show this Column
          Column( mainAxisAlignment: MainAxisAlignment.start,                // Making a condition. If user is Signin then show this complete column
                         crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          
          SizedBox(height: height*.05,),
          
           ListTile(
              leading: const Icon(Icons.settings, color: Colors.black, ),
              title: const Text("Prefrences", style:TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold) ,),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, ),
              onTap: (){},
             ),
              
             SizedBox(height: height * .02 ),
          
              ListTile(
              leading:const Icon(Icons.headset_mic_outlined, color: Colors.black,),
              title: const Text("Support", style:TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold),),
              trailing:const Icon(Icons.arrow_forward_ios, color: Colors.black,),
            onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: ((context) => const SupportScreen()),),
                );
            },
             ),
              
             SizedBox(height: height * .02 ),
          
              ListTile( 
              leading: const Icon(Icons.place_outlined, color: Colors.black, ),
              title: const Text("Adventurist Plus", style:TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold) ,),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black,),
              onTap: (){},
             ),
             SizedBox(
              height: height*.2,
             ),

               CustomButton(      //  calling a button from buttons.dart
                        borderColor: Colors.black,
                         backgroundColor: Colors.black,
                         icon: Icon(Icons.logout_outlined, color: Colors.white,),
                         text: 'Signout',
                         textColor: Colors.white,
                         onPressed: () {
                          auth.signOut().then((value){
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => const SignInScreen()),),
                ); 
                          }).onError((error, stackTrace) {
                            FlutterToastUtils().toastMessage(error.toString());
                          });
                          
                            },
                             buttonWidth: 250, // Set the desired width for the button
                             buttonHeight: 50, // Set the desired height for the button
                            ),
          
            ],
          
          )


        ),
      ),
    ); 

  }
}