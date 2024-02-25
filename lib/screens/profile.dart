// import 'package:adventurist/constants/buttons.dart';
// import 'package:flutter/material.dart';
//
// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});
//
//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height * 1;
//     final width = MediaQuery.of(context).size.width * 1;
//     return  Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Center(child: Text("Profile",)),
//         actions: [IconButton(onPressed: (){}, icon: Icon(Icons.edit_outlined))],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20, right: 20),
//           child: Column( crossAxisAlignment: CrossAxisAlignment.start,
//
//             children: [
//             SizedBox(height: 20,),
//
//              Row(
//                     children: [
//                       CircleAvatar(
//                         radius: height * 0.04,
//                         backgroundImage: NetworkImage(
//                             "https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=600"),
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Column(
//                         children: [
//                           Text(
//                             "Good Robins",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(
//                             height: 7,
//                           ),
//                           Text(
//                             "Isle of wigh, UK",
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Text(
//                             "3 Contribution",
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                         height: 10,
//                       ),
//
//                 Text("ajsajosd jasdla jdslad asdoaj sodasdao sdasdk adsaasn nasdfn lfndfsndfj rfgrgr gr g rt r"),
//
//                 SizedBox(height: 30,),
//                 Row(children: [
//                   Icon(Icons.place_outlined),
//                   SizedBox(width: 5,),
//                   Text("No city selected"),
//
//                 ],),
//                 SizedBox(height: 10,),
//                 Row(children: [
//                   Icon(Icons.link_rounded),
//                   SizedBox(width: 5,),
//                   Text("No city selected"),
//
//                 ],),
//                 SizedBox(height: 50,),
//
//                 Divider(color: Colors.black,),
//                 SizedBox(height: 60,),
//
//                 Text("0 photos", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
//
//                 Row( mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Column(
//                   children: [
//                     SizedBox(height: 40,),
//                     Text("Youu have no photo yet"),
//                     SizedBox(height: 40,),
//
//                     CustomButton(
//                           //  calling a button from buttons.dart
//                           borderColor: Colors.black,
//                           backgroundColor: Colors.black,
//                           text: 'Upload a photo',
//                           textColor: Colors.white,
//                           onPressed: () {
//
//                           },
//                           buttonWidth:
//                               250, // Set the desired width for the button
//                           buttonHeight:
//                               50, // Set the desired height for the button
//                         ),
//
//
//                     ],
//
//                 )],),
//                 SizedBox(height: 50,),
//
//                 Divider(color: Colors.black,),
//                 SizedBox(height: 60,),
//
//                 Text("0 reviews", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
//
//                 Row( mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Column(
//                   children: [
//                     SizedBox(height: 40,),
//                     Text("Youu have no reviews yet"),
//                     SizedBox(height: 40,),
//
//                     CustomButton(
//                           //  calling a button from buttons.dart
//                           borderColor: Colors.black,
//                           backgroundColor: Colors.black,
//                           text: 'Write a review',
//                           textColor: Colors.white,
//                           onPressed: () {
//
//                           },
//                           buttonWidth:
//                               250, // Set the desired width for the button
//                           buttonHeight:
//                               50, // Set the desired height for the button
//                         ),
//
//
//                     ],
//
//                 )],),
//                  SizedBox(height: 100,),
//
//
//           ]),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  User? _user;

  @override
  void initState() {
    super.initState();
    _getUserInfo();
  }

  Future<void> _getUserInfo() async {
    User? user = FirebaseAuth.instance.currentUser;
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: _user != null
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
             child: Icon(Icons.person),
            ),
            SizedBox(height: 20),
            Text(
              'Name: ${_user!.displayName}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Email: ${_user!.email}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        )
            : Text(
          'User not found',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileScreen(),
    );
  }
}