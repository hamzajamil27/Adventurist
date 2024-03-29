import 'package:Adventurist/screens/profile.dart';
import '../Discover_More_in_Karachi/Discover_More_in_Karachi.dart';
import '../RestaurantsCard/restaurants.dart';
import '../constants/colors/fontcolors.dart';
import '../hotels.dart';
import '../models/WeekendTripIdeas/weekendtripideas.dart';
import '../models/beachdayforbooks/beachday.dart';
import '../models/beyondthebeach/beyondthebeach.dart';

import 'package:flutter/material.dart';
import '../constants/buttons.dart';
import '../models/summer_vacations/SummerVacation.dart';
import '../restaurants.dart';
import 'Muree_Blog.dart';
import 'cholistan_blog.dart';
import 'khujerabNationalPark.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.teal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * .05),

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.end, // Circle Avatar Profile Pic
                    children: [
                      InkWell( onTap : (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()),
                        );
                      },
                        child: Container(
                          height:
                              50, // creating a container for circle avatar to give black borders
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                              width: 2.0,

                              // Set the border width
                            ),
                          ),
                          child: CircleAvatar(
                            child: Icon(Icons.person),
                            // backgroundImage: NetworkImage("https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=600"),
                          ),
                        ),
                      ),
                      SizedBox(width: 30,)

                    ],
                  ),
                  const Padding(
                    // Explore Text
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Explore',
                      style: TextStyle(
                          fontFamily: Medium,
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  SizedBox(
                    height: height * .05,
                  ),

                  Row(
                    // Hotel and Things to do Button
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        //  calling a button from buttons.dart

                        icon: const Icon(
                          Icons.bed,
                          color: Colors.black,
                        ),
                        text: 'Hotels',
                        onPressed: () {
                          Navigator.push( context, MaterialPageRoute(builder: (context) =>   HotelsScreen()),
                          );
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) =>
                          //           const FirstSimpleScreen(category: 'Hotel')),
                          // );
                        },
                        buttonWidth:
                            155, // Set the desired width for the button
                        buttonHeight:
                            60, // Set the desired height for the button
                      ),

                      const SizedBox(
                        width: 10,
                      ),

                      CustomButton(
                        //  calling a button from buttons.dart

                        icon: const Icon(
                          Icons.restaurant,
                          color: Colors.black,
                        ),
                        text: 'Restaurants',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RestaurantsScreen()),
                          );
                        },
                        buttonWidth:
                            155, // Set the desired width for the button
                        buttonHeight:
                            60, // Set the desired height for the button
                      ),

                      // CustomButton(                  //  calling a button from buttons.dart
                      //
                      //   icon: const Icon(Icons.local_activity, color: Colors.black,),
                      //    text: 'Things to do',
                      //    onPressed: () {
                      //       Navigator.push( context, MaterialPageRoute(builder: (context) =>  const FirstSimpleScreen(category: 'Things to do')),
                      //         );
                      //       },
                      //        buttonWidth: 155, // Set the desired width for the button
                      //        buttonHeight: 60, // Set the desired height for the button
                      //       ),
                    ],
                  ),

                  const SizedBox(height: 40),

                  // Padding(                   // custome buttom of Restaurants and forums
                  //   padding: const EdgeInsets.only(bottom: 20),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //
                  //     CustomButton(                   //  calling a button from buttons.dart
                  //
                  //       icon: const Icon(Icons.restaurant, color: Colors.black,),
                  //        text: 'Restaurants',
                  //        onPressed: () {
                  //           Navigator.push( context, MaterialPageRoute(builder: (context) =>  const FirstSimpleScreen(category: 'Restaurants')),
                  //             );
                  //           },
                  //            buttonWidth: 155, // Set the desired width for the button
                  //            buttonHeight: 60, // Set the desired height for the button
                  //           ),
                  //
                  //      const SizedBox(width: 10,),
                  //
                  //    CustomButton(                  //  calling a button from buttons.dart
                  //
                  //      icon: const Icon(Icons.forum, color: Colors.black,),
                  //       text: 'Forums',
                  //       onPressed: () {
                  //        Navigator.push( context, MaterialPageRoute(builder: (context) =>  const FirstSimpleScreen(category: 'Forums')),
                  //             );
                  //          },
                  //           buttonWidth: 155, // Set the desired width for the button
                  //           buttonHeight: 60, // Set the desired height for the button
                  //          ),
                  //
                  //      ],
                  //    ),
                  // ),
                ],
              ),
            ),

            Padding(
              // Discover More in Dubai Container
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: height * .28,
                width: width * .85,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1611068661807-c850d6a24f62?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Discover More in\nKarachi",
                            style: TextStyle(
                                fontFamily: Medium,
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Align(
                        alignment: Alignment.center,
                        child: CustomButton(
                          //  calling a button from buttons.dart
                          icon: const Icon(
                            Icons.explore,
                            color: Colors.black,
                          ),
                          text: 'Keep Exploring',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DiscoverMoreinKarachiScreen(),
                              ),
                            );
                          },
                          buttonWidth:
                              200, // Set the desired width for the button
                          buttonHeight:
                              50, // Set the desired height for the button
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 50,
            ),

            Container(
              height: height * .7,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2020/09/09/07/57/fortress-5556905_1280.jpg"),
                    fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: height * .3,
                  ),
                  const Padding(
                    // Text
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Cholistan Desert",
                        style: TextStyle(
                            fontFamily: Medium,
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const Padding(
                    // Text
                    padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Exploring the Mystique of Cholistan Desert: A Jewel of Pakistan",
                        style: TextStyle(
                            fontFamily: Medium,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    // Lets go Button
                    padding: const EdgeInsets.only(top: 30, left: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomButton(
                        text: "Want to more!",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CholistanBlogScreen(),
                            ),
                          );
                        },
                        buttonWidth: 150,
                        buttonHeight: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * .04,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: height * .02,
            ),

            const Center(
              // Text
              child: Text(
                "Looking for Food?",
                style: TextStyle(
                  fontFamily: Medium,
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(
              height: height * .01,
            ),

            const Padding(
              // Text
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Check out the top dining spots in Pakistan",
                    style: TextStyle(
                      fontFamily: Medium,
                      fontSize: 16,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              // Looking for Food
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: height * .33,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: RestaurantModelsdata().restaurants.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Restaurantcards(
                        restaurant: RestaurantModelsdata().restaurants[index]);
                  },
                ),
              ),

            ),

            SizedBox(height: height * .08),
            Container(
              height: height * .73,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1602600049562-ab0a1645ce3e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                    fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: height * .25,
                  ),
                  const Padding(
                    // Text
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Murree",
                          style: TextStyle(
                              fontFamily: Medium,
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    // Text
                    padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "A Mountain Retreat with a Rich History",
                        style: TextStyle(
                            fontFamily: Medium,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    // Pack your Bags Button
                    padding: const EdgeInsets.only(top: 30, left: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomButton(
                        text: "Want to know More!",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MurreeBlogScreen()),
                          );
                        },
                        buttonWidth: 190,
                        buttonHeight: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: height * .08),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Looking for Hotels?",
                style: TextStyle(
                  fontFamily: Medium,
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(
              height: height * .02,
            ),

            const Padding(
              // Text
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Find the best hotels in these cities",
                    style: TextStyle(
                      fontFamily: Medium,
                      fontSize: 16,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            //   SizedBox(height: height * .03),
            SizedBox(
              height: height * .02,
            ),
            SizedBox(
              height: height * .44, // ListView.Builder for Summer

              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:
                      SummerVacationItemModeldata().summerVacations.length,
                  itemBuilder: (BuildContext context, int index) {
                    //SummervacationItemModel model = SummerVacationItemModeldata.getStatusItem(index);
                    return SummervacationCards(
                        summerVacation:
                            SummerVacationItemModeldata().summerVacations[index]

                        // imagePath: model.imagePath,  // placeName: model.placeName,  // companyName: model.companyName,  // price: model.price,
                        );
                  }),
            ),
            SizedBox(
              height: height * .02,
            ),

            Container(
              height: height * .7,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1637000404414-d064eae612d8?q=80&w=1659&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                    fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: height * .2,
                  ),
                  const Padding(
                    // Text
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Khunjerab National Park",
                        style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const Padding(
                    // Text
                    padding: EdgeInsets.only(top: 20, left: 30, right: 40),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Exploring Pakistan's Alpine Wonderland",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    // Pack your Bags Button
                    padding: const EdgeInsets.only(top: 30, left: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomButton(
                        text: "Read more about this",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const KhujerabParkScreen()),
                          );
                        },
                        buttonWidth: 210,
                        buttonHeight: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: height * .08,
            ),

            // TextButton(
            //     onPressed: () {},
            //     child: Text(
            //       "See more Tours",
            //     )),
            //
            // SizedBox(
            //   height: height * .02,
            // ),

            const Center(
              // Text
              child: Padding(
                padding: EdgeInsets.only(left: 20, right :20),
                child: Text(
                  "Visit the best Hotels in Mountain side of Pakistan",
                  style: TextStyle(
                    fontFamily: Medium,
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: height * .05,
            ),

            // const Padding(
            //   // Text
            //   padding: EdgeInsets.only(left: 20, right: 20),
            //   child: Center(
            //     child: Align(
            //       alignment: Alignment.center,
            //       child: Text(
            //         "Visit the best Hotels in Mountain side of Pakistan",
            //         style: TextStyle(
            //           fontFamily: Medium,
            //           fontSize: 16,
            //           color: Colors.black,
            //           // fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            Padding(
              // Listview Builder for Weekend Trip Ideas
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: height * .40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Tripideaweekenditemmodeldata().tripIdeas.length,
                    itemBuilder: (context, index) {
                      //Tripideaweekenditemmodel model = Tripideaweekenditemmodeldata.getStatusItem(index);
                      return WeekEndTripIdeasCard(
                          tripIdea:
                              Tripideaweekenditemmodeldata().tripIdeas[index]

                          // imageI: model.imageI,
                          // cityname: model.cityname,
                          );
                    }),
              ),
            ),

            // SizedBox(
            //   height: height * .05,
            // ),
            //
            // const Center(
            //   // Text A beach day for the books
            //   child: Text(
            //     "A beach day for the books",
            //     style: TextStyle(
            //       fontFamily: Medium,
            //       fontSize: 24,
            //       color: Colors.black,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),

            // SizedBox(
            //   height: height * .02,
            // ),
            //
            // const Padding(
            //   // Text A beach day for the books
            //   padding: EdgeInsets.only(left: 20, right: 20),
            //   child: Center(
            //     child: Align(
            //       alignment: Alignment.center,
            //       child: Text(
            //         "Spend your summer on the best Pakistan Beaches",
            //         style: TextStyle(
            //           fontFamily: Medium,
            //           fontSize: 16,
            //           color: Colors.black,
            //           // fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            //
            // SizedBox(
            //   height: height * .05,
            // ),
            //
            // SizedBox(
            //   height: height * .35,
            //   child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: Beachdayitemmodeldata().beachDayItems.length,
            //       itemBuilder: (context, index) {
            //         //  Beachdayitemmodel model = Beachdayitemmodeldata .getStatusItem(index);
            //
            //         return BeachDayCard(
            //             beachDayItem:
            //                 Beachdayitemmodeldata().beachDayItems[index]
            //             // imagebeach:model.imagebeach,  // beachname: model.beachname,
            //             );
            //       }),
            // ),

            SizedBox(
              height: height * .05,
            ),

            //        SizedBox(height: height*.03,),
            //
            //   const Center(                         // Text
            //    child: Text("Beyond the Beach",
            //    style: TextStyle(
            //     fontFamily: Medium,
            //     fontSize: 24,
            //     color: Colors.black,
            //     fontWeight: FontWeight.bold,
            //    ),
            //    ),
            //  ),
            //
            //     SizedBox(height: height * .01,),
            //
            //      const Padding(                     // Text
            //   padding: EdgeInsets.only(left: 20, right: 20),
            //   child: Center(
            //      child: Align( alignment: Alignment.center,
            //        child:  Text("Triopical experiences to travel up your trips",
            //        style: TextStyle(
            //         fontFamily: Medium,
            //         fontSize: 16,
            //         color: Colors.black,
            //        // fontWeight: FontWeight.bold,
            //        ),
            //        ),
            //      ),
            //    ),
            // ),
            //
            //     Padding(                  // Listview Builder Beyond the Beach
            //   padding: const EdgeInsets.symmetric(vertical: 30),
            //   child: SizedBox(
            //     height: height *.48 ,
            //
            //     child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: Beyondthebeachitemdata().beachItems.length,
            //       itemBuilder: (context, index){
            //      // Beyondthebeachitemmodel model = Beyondthebeachitemdata .getStatusItem(index);
            //
            //       return BeyondTheBeachCard(
            //         beachitem: Beyondthebeachitemdata().beachItems[index],
            //         // beyondbeachimage:model.beyondbeachimage, // beyondbeachplaceName: model.beyondbeachplaceName,  // beyondbeachcompanyName: model.beyondbeachcompanyName, // beyondbeachprice: model.beyondbeachprice,
            //         );
            //       }
            //       ),
            //   ),
            // ),

            // Padding(              // Discover More in Dubai Container
            //   padding: const EdgeInsets.only(top: 5),
            //   child: Container(
            //    height: height * .28,
            //    width: width * .85,
            //   decoration: const BoxDecoration(
            //    borderRadius: BorderRadius.all(Radius.circular(10),),
            //   image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/2115367/pexels-photo-2115367.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            //   fit: BoxFit.cover),
            //   ),
            //
            //    child: Column(
            //      children:  [
            //       const Padding(
            //         padding: EdgeInsets.only(top: 15, left: 20, right: 20),
            //         child: Align(
            //            alignment:Alignment.center,
            //          child:Text("Is Adventurist Missing a Place?",
            //          style: TextStyle(fontFamily: Medium, fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),),),
            //       ),
            //
            //         Padding(
            //           padding: const EdgeInsets.only(top: 20,),
            //           child: Align(alignment: Alignment.center,
            //             child: CustomButton(                   //  calling a button from buttons.dart
            //
            //                   icon: const Icon(Icons.place, color: Colors.black,),
            //                    text: 'Add a missing Place',
            //                    onPressed: () {
            //                       },
            //                        buttonWidth: 250, // Set the desired width for the button
            //                        buttonHeight: 50, // Set the desired height for the button
            //                       ),
            //           ),
            //         ),
            //
            //      ],
            //
            //    ),
            //   ),
            // ),
            SizedBox(
              height: height * .01,
            ),
          ],
        ),
      ),
    );
  }
}
