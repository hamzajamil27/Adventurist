import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

import '../Utilities/flutterToastUtilities.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  Future<void> sendEmail() async{
    final Email email = Email(
      recipients: ['hamzajamil288@gmail.com'],
      isHTML: false,
    );
    try {
      await FlutterEmailSender.send(email);
    } catch (e) {
      FlutterToastUtils().toastMessage("Error sending email");
    }
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
        appBar: AppBar(
        title: const Text(
        "Customer Support",
        style: TextStyle(
        color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
    ),
          elevation: 30,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          automaticallyImplyLeading: false,
        ),
      
      body: Column(
        children: [
         SizedBox(height: 40,),
          Container( height: height*.3,
            child: Image(image: AssetImage("assets/support.jpg"),
          ),
          ),
          ListTile(
              leading: const Icon(
                Icons.headset_mic_outlined,
                color: Colors.black,
              ),
              title: const Text(
                "Customer Support",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
              onTap: () {
                sendEmail();
              }

          ),
SizedBox(height: height*.05,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Need assistance? Our dedicated support team is here to help you with any "
                "questions or concerns you may have about our application. Feel free "
                "to reach out to us for prompt and personalized assistance", style: TextStyle(fontSize: 16,),),
          ),

        ],
      ),
    );
  }
}
