// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_database/ui/firebase_animated_list.dart';
// import 'package:flutter/material.dart';
//
// class VisitReviewScreen extends StatefulWidget {
//   const VisitReviewScreen({super.key});
//
//   @override
//   State<VisitReviewScreen> createState() => _VisitReviewScreenState();
// }
//
// class _VisitReviewScreenState extends State<VisitReviewScreen> {
//
//  final postController = TextEditingController();
//  bool loading = false;
//  final databaseRef = FirebaseDatabase.instance.ref('Deploy');
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//
//       appBar: AppBar(
//         elevation: 0,
//         title: Text("Visit your Reviews here"),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: FirebaseAnimatedList(query: databaseRef, itemBuilder: ((context, snapshot, animation, index) {
//               return ListTile(
//                 title: Text(snapshot.child("title").value.toString(), style: TextStyle(fontSize: 20),),
//                 subtitle: Text(snapshot.child("id").value.toString(), style: TextStyle(fontSize: 12),),
//               );
//             })),
//           )
//         ],
//       ),
//     );
//   }
// }