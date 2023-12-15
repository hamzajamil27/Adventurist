// ignore_for_file: file_names

import 'package:adventurist/BottomNavigationBar/navigationbar.dart';
import 'package:adventurist/Utilities/flutterToastUtilities.dart';
import 'package:adventurist/constants/buttons.dart';
import 'package:adventurist/screens/signup_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  
  void dispose(){          // it will dispose the password and email from memory
    super.dispose();
    
    emailController.dispose();      
    passwordController.dispose();

  }                       
  void signup (){      
    setState((){
      loading =true;
    });                     // here i make a Function for Login. i call this function into sing-in button. this is the same procedure like we did in sign-up but there we make a function inside the button and in Login screen we make a function outside the button and wil call inside the button
    _auth.signInWithEmailAndPassword(
      email: emailController.text, 
      password: passwordController.text).then((value){
        FlutterToastUtils().toastMessage(value.user!.toString());
        Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const NavigatorBar()),),);

        setState((){
      loading =false;
    }); 

      }).onError((error, stackTrace){
        FlutterToastUtils().toastMessage(error.toString());
        setState((){
      loading =false;
    }); 
      });

  }
  @override
  Widget build(BuildContext context) {
    
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold( backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme:  const IconThemeData(color: Colors.black),

      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column( children: [


         
            SizedBox(height: height* .02,),
            
            const Text("Sign in here if you have already registered", 
            style: TextStyle( 
              fontSize: 24,
              fontWeight: FontWeight.bold),),

               Form(
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
                  child: Icon(Icons.lock, color: Colors.black),
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
            
             Align( alignment: Alignment.topLeft,
            child: InkWell( onTap: (){},
              child: const Text("Forget Password?", 
              style: TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.bold, 
                color: Color.fromARGB(255, 6, 119, 211),),
                ),),),
      
            SizedBox(height: height* .05,),
          
           CustomButton(      //  calling a button from buttons.dart
                          borderColor: Colors.black,
                           backgroundColor: Colors.black,
                           text: 'Sign in',
                           textColor: Colors.white,
                           loading: loading,
                           onPressed: () {
                            if(_formKey.currentState!.validate()){
                              signup();
                        
                            }
                           },
                               buttonWidth: double.infinity, // Set the desired width for the button
                               buttonHeight: 60, // Set the desired height for the button
                              ),
           
           SizedBox(height: height* .02,),
      
          CustomButton(      //  calling a button from buttons.dart
                          borderColor: Colors.black,
                           backgroundColor: Colors.white,
                           text: 'Sign up',
                           textColor: Colors.black,
                           onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => const SignUpScreen()),),
                  );
                              },
                               buttonWidth: double.infinity, // Set the desired width for the button
                               buttonHeight: 60, // Set the desired height for the button
                              ),
          ],
          ),
        ),
      ),
    );
  }
}