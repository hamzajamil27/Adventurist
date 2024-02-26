import 'package:Adventurist/screens/supportScreen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../screens/AccountScreen_and_SubScreens/account_Screen.dart';
import '../screens/homescreen.dart';
import '../screens/reviewScreen.dart';




class NavigatorBar extends StatefulWidget {
 // static final title = 'salomon_bottom_bar';
  const NavigatorBar({super.key});
 
  @override
  State<NavigatorBar> createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {
  
  int _currentIndex=0;
   final List<Widget> _screens = [
   const HomeScreen(),
  // const SearchScreen(),
   //const PlanScreen(),
   const ReviewScreen(),
   const AccountScreen(),
     const SupportScreen(),
 ];

  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
         body: _screens[_currentIndex],
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.purple,
            ),

            /// Likes
            // SalomonBottomBarItem(
            //   icon: const Icon(Icons.search),
            //   title: const Text("Search"),
            //   selectedColor: Colors.pink,
            // ),
            //
            // SalomonBottomBarItem(
            //   icon: const Icon(Icons.favorite_border),
            //   title: const Text("Plan"),
            //   selectedColor: Colors.pink,
            // ),

           SalomonBottomBarItem(
            icon: const Icon(Icons.rate_review), 
            title: const Text("Review"),
            selectedColor: Colors.pink
            ),

            // Account
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Account"),
              selectedColor: Colors.teal,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.headset_mic_outlined),
              title: const Text("Support"),
              selectedColor: Colors.red,
            ),


          ],
        ),
    );
  }
}

            