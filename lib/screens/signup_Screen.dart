// ignore_for_file: file_names

import 'package:adventurist/BottomNavigationBar/navigationbar.dart';
import 'package:adventurist/Utilities/flutterToastUtilities.dart';
import 'package:adventurist/constants/buttons.dart';
import 'package:adventurist/screens/signin_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool loading = false;
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();
   final passwordController = TextEditingController();
   final emailController = TextEditingController();
   
   final FirebaseAuth _auth=FirebaseAuth.instance;
  @override
    void dispose(){          // it will dispose the password and email from memory
    super.dispose();
    
    emailController.dispose();      
    passwordController.dispose();
    } 
    void Signup(){              // Function for Signup
     
     setState(() {
      loading = true;
      });
                          
      _auth.createUserWithEmailAndPassword(
       email: emailController.text.toString(), 
       password: passwordController.text.toString()).then((value){   //  these 10 lines of code
                                                                    //  is used for showing the error on the UI to handle the errors easily
                                                                    //  To showing error on UI we use FlutterToast by making a class and paste the code on that class 
       Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const NavigatorBar()),),); 
        setState((){
         loading = false;  
        });
        
        }).onError((error, stackTrace) {
        FlutterToastUtils().toastMessage(error.toString());
        setState(() {
         loading = false;
       });
      },);
    }
   @override 
  Widget build(BuildContext context) {
    
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return  PopScope(
      canPop: true,
  onPopInvoked: (didPop) async {
    SystemNavigator.pop();
    
      },

      child: Scaffold( backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme:  const IconThemeData(color: Colors.black),
    
        ),
    
        body: SingleChildScrollView( 
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [ 
          
              SizedBox(height: height* .02,),
              
              
              const Text("Register yourself & become a Adventurist member", 
              style: TextStyle( 
                fontSize: 24,
                fontWeight: FontWeight.bold),),
        
               SizedBox(height: height* .01  ,),
             
      Form(                                     // Email and Password Textfields are in this Widget
                  key : _formKey,
                   child: Column(
              children: [
                SizedBox(height: height* .04,),
             
    
               const Align( alignment: Alignment.topLeft,
                child: Text("Email address", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)),
                  
                  SizedBox(height: height* .01,),
                    SizedBox( height: height * .07,      // Cupertino Text Field
                    width: width * .9,
                      child: TextFormField(
                        controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email address',
                  labelStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(Icons.mail_outline, color: Colors.black) ,
                  ),
                  filled: true,
                  fillColor: const Color(0xfff7f7f7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black, width: 2.0),
                  ),
                ),
                validator: (value) {
                  if(value!.isEmpty){
                    return "Enter Email Address";
                  }
                  return null;
                } ,
              ),
                    ), 
        
                     SizedBox(height: height* .03,),
             
               const Align( alignment: Alignment.topLeft,
                child: Text("Password", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)),
                  
                  SizedBox(height: height* .01,),
                    SizedBox( height: height * .07,      // Cupertino Text Field
                    width: width * .9, 
                      child: TextFormField(
                        
                        controller: passwordController, 
                        obscureText: true,     // Password controller
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(Icons.lock_outlined, color: Colors.black),
                  ),
                  filled: true,
                  fillColor: const Color(0xfff7f7f7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black, width: 2.0),
                  ),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Enter Password";
                  }
                  return null;  
                },
              ),
                    ), 
                    
              ],
            )),
                    
                    SizedBox(height: height* .01,),
    
              const Align( alignment: Alignment.topLeft,
                child: Text("At least 6 Characters required", 
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14, 
                  fontWeight: FontWeight.bold),)),
        
              SizedBox(height: height* .03,),
    
                Row(
                 children: [
                   Checkbox( 
            value: isChecked, // Set the initial state
            onChanged: (bool? newValue) {
              // Handle checkbox state changes
              setState(() {
                isChecked = newValue ?? false;
              });
            },
          ),
                 const Text("Yes, inform me on deals and\nFeatures.  I can opt out at any time", 
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 18, 
                     fontWeight: FontWeight.bold),),
                 ],
               ),
    
                        SizedBox(height: height* .03,),
    
             CustomButton(      //  calling a button from buttons.dart
                            borderColor: Colors.black,
                             backgroundColor: Colors.black,
                             text: 'Sign up',
                             textColor: Colors.white,
                             loading: loading, 
                             onPressed: () {
                             if(_formKey.currentState!.validate()){
                              Signup();
    
                              }
                                },
                                 buttonWidth: double.infinity, // Set the desired width for the button
                                 buttonHeight: 60, // Set the desired height for the button
                                ),
             
             SizedBox(height: height* .02,),
        
            CustomButton(      //  calling a button from buttons.dart
                            borderColor: Colors.black,
                             backgroundColor: Colors.white,
                             text: 'Sign in',
                             textColor: Colors.black,
                             onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => const SignInScreen()),),
                    );
                                },
                                 buttonWidth: double.infinity, // Set the desired width for the button
                                 buttonHeight: 60, // Set the desired height for the button
                                ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}