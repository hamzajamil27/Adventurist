import 'package:flutter/material.dart';

import 'models/WeekendTripIdeas/weekendtripideas.dart';
import 'models/summer_vacations/SummerVacation.dart';

class HotelsScreen extends StatefulWidget {
  const HotelsScreen({super.key});

  @override
  State<HotelsScreen> createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height* 1;
    final width = MediaQuery.of(context).size.width* 1;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hotels")),
        elevation: 30,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * .05,
            ),
        
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text("Book the best Hotel for yourself", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              height: height * .05,
            ),
            SizedBox(
              height: height * .40, // ListView.Builder for Summer
        
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:
                  SummerVacationItemModeldata().summerVacations.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SummervacationCards(
                        summerVacation:
                        SummerVacationItemModeldata().summerVacations[index]
        
                      // imagePath: model.imagePath,  // placeName: model.placeName,  // companyName: model.companyName,  // price: model.price,
                    );
                  }),
            ),
            SizedBox(
              height: height * .01,
            ),
        
            Padding(
              // Listview Builder for Weekend Trip Ideas
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: height * .40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Tripideaweekenditemmodeldata().tripIdeas.length,
                    itemBuilder: (context, index) {
                      return WeekEndTripIdeasCard(
                          tripIdea:
                          Tripideaweekenditemmodeldata().tripIdeas[index]
        
                        // imageI: model.imageI,
                        // cityname: model.cityname,
                      );
                    }),
              ),
            ),

            SizedBox(
              height: height * .1,
            ),
        
        
          ],
        ),
      ),
    );
  }
}
